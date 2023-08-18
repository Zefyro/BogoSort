scoreboard players set __math__.rng.bound __variable__ 201
function bogosort:__private__/math_random/main
scoreboard players operation $bogosort_random __variable__ = __math__.rng.result __variable__
scoreboard players remove $bogosort_random __variable__ 100
execute store result storage bogosort:array single int 1 run scoreboard players get $bogosort_random __variable__
data modify storage bogosort:array value append from storage bogosort:array single
scoreboard players add $i __variable__ 1
execute if score $i __variable__ matches ..7 run function bogosort:__private__/for_loop/0


# This datapack was made by Zefyro
# It's part of a project https://github.com/Zefyro/BogoSort
#
# Trying to see how much is possible with minecraft datapacks