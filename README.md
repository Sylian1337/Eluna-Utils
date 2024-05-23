# Eluna-Utils
A utils script for Eluna.


[FEATURES]



All available events have been added to tables in the script for easy access, so you no longer have to remember the event IDs!

All UpdateFields have been added to tables, so you no longer have to remember them.

I added a color table containing most, if not all, color codes so that text can be changed easily—there's no need to look up colour codes!



[HOW TO USE]

1. Download the .rar file, then extract the folder into your "lua_scripts" folder.

2. Create your new eluna/lua file in a new folder.

3. Open your new Eluna/lua file, at the top, write what I have written below

package.path = package.path .. ";/D:/WoW Server Project/bin/RelWithDebInfo/lua_scripts/Utilities/?.lua"

local utils = require("ElunaUtils");

4. Change the first line where "D:/WoW Server Project/bin/RelWithDebInfo/lua_scripts/Utilities/?.lua" to where your Utilities folder is located.

5. That is all you need to do; now you can get started with your new Eluna project faster and easier!

[WHERE ARE THE EVENTS]

To get to the events, you write "utils." (This is based on what you called your variable that stores the ElunaUtils script.) Now, you can see a list of tables from the "ElunaUtils" script. If we want the "PlayerEvents," then we write "utils.PlayerEvents." to see all the different player events.

[WHERE ARE THE UPDATEFIELDS]

To get to the update fields, you write "utils." (This is based on what you called your variable that stores the ElunaUtils script.) Now, you can see a list of tables from the "ElunaUtils" script. If we want the "UNIT_FIELD_STAT0," we write "utils.PlayerEvents." to see all the different player events.

[WHERE ARE THE COLOR CODES]

To get to the colour codes, you write "utils." (This is based on what you called your variable that stores the ElunaUtils script.) Now, you can see a list of tables from the "ElunaUtils" script. If we want the "LIGHTGREEN," we write "utils.Colors." to show all the different colors.

NOTE: Always end your text with "helper.Colors.COLOR_END"!


I hope you can use this release for your future projects!
