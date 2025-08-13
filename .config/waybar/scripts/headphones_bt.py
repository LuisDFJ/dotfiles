import json
import subprocess
import re

BAT_ICON = [ "󰁺", "󰁻", "󰁼", "󰁽", "󰁾", "󰁿", "󰂀", "󰂁", "󰂂", "󰁹" ]
BAT_STAT = [ "critical", "warning", "normal", "normal", "normal", "normal" ]

def interpolate_list( p : float, l : list[ "str" ] ):
    return l[ int( ( len( l ) - 1 ) * p / 100 ) ]

def parseResponseAsDict( stdout : str ):
    devices = {}
    for MAC, INFO in re.findall( r"device\s*([0-9A-F:]{17}).*\n((?:\t.+\n?)*)", stdout, re.IGNORECASE ):
        devices[MAC] = { "UUID" : [] }
        for FIELD, DATA in  re.findall( r"\t(.+):\s*(.*)", INFO, re.IGNORECASE ):
            if FIELD == "Battery Percentage": DATA = int( DATA.split(" ")[0], 0 )
            if DATA == 'yes': DATA = True
            if DATA == 'no' : DATA = False
            if FIELD != "UUID": devices[MAC][FIELD] = DATA
            else: devices[MAC]["UUID"].append( DATA )
    return devices

def main():
    try:
        res = subprocess.run( [ "bluetoothctl", "info"], capture_output=True, text=True, check=True )
        devices = parseResponseAsDict( res.stdout )
        for _, info in devices.items():
            if "Galaxy Buds Pro" in info["Name"] and info["Connected"]:
                BAT = info["Battery Percentage"]
                return { "text": f" {BAT}% { interpolate_list( BAT, BAT_ICON ) } | 󱡏 ", "class" : f"{ interpolate_list( BAT, BAT_STAT ) }" }
    except subprocess.CalledProcessError as error:
        pass
    return { "text": "", "class": "normal" }

if __name__ == "__main__":
    print( json.dumps( main() ) )
