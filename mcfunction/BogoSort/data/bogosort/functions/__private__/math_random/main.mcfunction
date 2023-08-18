scoreboard players operation __math__.seed __variable__ *= __math__.rng.a __variable__
scoreboard players operation __math__.seed __variable__ += __math__.rng.c __variable__
scoreboard players operation __math__.rng.result __variable__ = __math__.seed __variable__
scoreboard players operation __math__.tmp __variable__ = __math__.rng.result __variable__
scoreboard players operation __math__.rng.result __variable__ %= __math__.rng.bound __variable__
scoreboard players operation __math__.tmp __variable__ -= __math__.rng.result __variable__
scoreboard players operation __math__.tmp __variable__ += __math__.rng.bound __variable__
execute if score __math__.tmp __variable__ matches ..0 run function bogosort:__private__/math_random/main


# This datapack was made by Zefyro
# It's part of a project https://github.com/Zefyro/BogoSort
#
# Trying to see how much is possible with minecraft datapacks