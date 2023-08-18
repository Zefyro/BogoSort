scoreboard objectives add __variable__ dummy
scoreboard objectives add __int__ dummy
scoreboard players set 10 __int__ 10
scoreboard players set 100 __int__ 100
execute unless score __math__.seed __variable__ matches -2147483648..2147483647 run function bogosort:__private__/math_random/setup


# This datapack was made by Zefyro
# It's part of a project https://github.com/Zefyro/BogoSort
#
# Trying to see how much is possible with minecraft datapacks