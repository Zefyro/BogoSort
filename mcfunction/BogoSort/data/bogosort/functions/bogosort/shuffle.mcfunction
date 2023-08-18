data modify storage bogosort:array sorted set value []
data modify storage bogosort:array sorting set value []
data modify storage bogosort:array sorting set from storage bogosort:array value
scoreboard players set __if_else__ __variable__ 0
execute if predicate bogosort:chance run function bogosort:__private__/if_else/4
execute if score __if_else__ __variable__ matches 0 run function bogosort:__private__/if_else/5
scoreboard players set __if_else__ __variable__ 0
execute if predicate bogosort:chance run function bogosort:__private__/if_else/12
execute if score __if_else__ __variable__ matches 0 run function bogosort:__private__/if_else/13
scoreboard players set __if_else__ __variable__ 0
execute if predicate bogosort:chance run function bogosort:__private__/if_else/20
execute if score __if_else__ __variable__ matches 0 run function bogosort:__private__/if_else/21
scoreboard players set __if_else__ __variable__ 0
execute if predicate bogosort:chance run function bogosort:__private__/if_else/28
execute if score __if_else__ __variable__ matches 0 run function bogosort:__private__/if_else/29
scoreboard players set __if_else__ __variable__ 0
execute if predicate bogosort:chance run function bogosort:__private__/if_else/36
execute if score __if_else__ __variable__ matches 0 run function bogosort:__private__/if_else/37
scoreboard players set __if_else__ __variable__ 0
execute if predicate bogosort:chance run function bogosort:__private__/if_else/44
execute if score __if_else__ __variable__ matches 0 run function bogosort:__private__/if_else/45
scoreboard players set __if_else__ __variable__ 0
execute if predicate bogosort:chance run function bogosort:__private__/if_else/52
execute if score __if_else__ __variable__ matches 0 run function bogosort:__private__/if_else/53
scoreboard players set __if_else__ __variable__ 0
execute if predicate bogosort:chance run function bogosort:__private__/if_else/60
execute if score __if_else__ __variable__ matches 0 run function bogosort:__private__/if_else/61
data modify storage bogosort:array value set from storage bogosort:array sorted


# This datapack was made by Zefyro
# It's part of a project https://github.com/Zefyro/BogoSort
#
# Trying to see how much is possible with minecraft datapacks