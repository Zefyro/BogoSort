scoreboard players add $iteration __variable__ 1
function bogosort:bogosort/shuffle
scoreboard players operation $iterations __variable__ = $iteration __variable__
scoreboard players operation $iterations __variable__ %= 100 __int__
execute if score $iterations __variable__ matches 0 run function bogosort:bogosort/printiteration
execute store result score $running __variable__ run function bogosort:bogosort/issorted
scoreboard players operation $temp __variable__ = $iteration __variable__
scoreboard players operation $temp __variable__ %= 10 __int__
scoreboard players set __if_else__ __variable__ 0
execute unless score $running __variable__ matches 1.. unless score $temp __variable__ matches 0 run function bogosort:__private__/if_else/0
execute if score __if_else__ __variable__ matches 0 run function bogosort:__private__/if_else/1


# This datapack was made by Zefyro
# It's part of a project https://github.com/Zefyro/BogoSort
#
# Trying to see how much is possible with minecraft datapacks