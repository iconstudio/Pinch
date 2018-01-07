/// @description Initialization

player_id_set(id)

jumped = false
jump_count_max = second(0.1)
jump_count = jump_count_max

stomp_count_max = 7
stomp_count = stomp_count_max

shielding = false
shield_count_max = second(5)
shield_count = 0

event_inherited()
