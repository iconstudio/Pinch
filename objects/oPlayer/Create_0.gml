/// @description Initialization

player_id_set(id)

// weapons
wield = "" // item what hold on
attack_delay = 0

laddering = false
ladder_count_max = 4
ladder_count = 0
ladder_speed = 3
ladder_delay = 0

jumped = false
jump_count_max = second(0.06)
jump_count = jump_count_max
jump_speed = -10

stomp_count_max = 7
stomp_count = stomp_count_max

shielding = false
shield_count_max = second(5)
shield_count = 0

event_inherited()
