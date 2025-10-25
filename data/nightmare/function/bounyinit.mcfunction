team add cop "COP"
team modify cop color blue
team modify cop prefix [{"color":"yellow","hover_event":{"action":"show_text","value":[{"text":"OFFICER"}]},"shadow_color":-14548737,"text":"⭐"}]
team add wanted "WANTED"
team modify wanted color red
team modify wanted prefix [{"color":"red","hover_event":{"action":"show_text","value":[{"text":"WANTED"}]},"shadow_color":-4128768,"text":"⚠"}]
team add neutral "NEUTRAL"
team modify neutral color gray
team modify neutral prefix [{"color":"gray","hover_event":{"action":"show_text","value":[{"text":"NEUTRAL"}]},"shadow_color":-8684677,"text":"👨"}]
team add jail "JAIL"
team modify jail color gold
team modify jail prefix [{"color":"gold","hover_event":{"action":"show_text","value":[{"text":"JAIL"}]},"shadow_color":-8303872,"text":"⫵"}]
scoreboard objectives add teamkillblue teamkill.blue "Killed Cops"
scoreboard objectives add teamkillneutral teamkill.gray "Killed Neutral"
scoreboard objectives add teamkillred teamkill.red "Killed Hostiles"
scoreboard objectives add wantedlevel dummy "Wanted Level"

scoreboard objectives add isdied deathCount "Is Died"
