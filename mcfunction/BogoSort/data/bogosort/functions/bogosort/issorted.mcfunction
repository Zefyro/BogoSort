scoreboard players set $prev __variable__ -999
execute store result score $temp __variable__ run data get storage bogosort:array sorting[0]
execute if score $prev __variable__ > $temp __variable__ run return 0
scoreboard players operation $prev __variable__ = $temp __variable__
execute store result score $temp __variable__ run data get storage bogosort:array sorting[1]
execute if score $prev __variable__ > $temp __variable__ run return 0
scoreboard players operation $prev __variable__ = $temp __variable__
execute store result score $temp __variable__ run data get storage bogosort:array sorting[2]
execute if score $prev __variable__ > $temp __variable__ run return 0
scoreboard players operation $prev __variable__ = $temp __variable__
execute store result score $temp __variable__ run data get storage bogosort:array sorting[3]
execute if score $prev __variable__ > $temp __variable__ run return 0
scoreboard players operation $prev __variable__ = $temp __variable__
execute store result score $temp __variable__ run data get storage bogosort:array sorting[4]
execute if score $prev __variable__ > $temp __variable__ run return 0
scoreboard players operation $prev __variable__ = $temp __variable__
execute store result score $temp __variable__ run data get storage bogosort:array sorting[5]
execute if score $prev __variable__ > $temp __variable__ run return 0
scoreboard players operation $prev __variable__ = $temp __variable__
execute store result score $temp __variable__ run data get storage bogosort:array sorting[6]
execute if score $prev __variable__ > $temp __variable__ run return 0
scoreboard players operation $prev __variable__ = $temp __variable__
execute store result score $temp __variable__ run data get storage bogosort:array sorting[7]
execute if score $prev __variable__ > $temp __variable__ run return 0
scoreboard players operation $prev __variable__ = $temp __variable__
return 1


# This datapack was made by Zefyro
# It's part of a project https://github.com/Zefyro/BogoSort
#
# Trying to see how much is possible with minecraft datapacks