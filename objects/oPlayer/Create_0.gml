/// @description Initialization

player_id_set(id)

attr_hspeed = 2
attr_jump_time = 2
attr_jump_speed = -6
attr_stomp_speed = 10

// weapons
wield = "" // item what hold on
wield_data = []
attack_delay = 0

laddering = false
ladder_count_max = 4
ladder_count = 0
ladder_speed = 3
ladder_delay = 0

jumped = false
jump_count = attr_jump_time

stomp_count_max = 7
stomp_count = stomp_count_max

shielding = false
shield_count_max = second(5)
shield_count = 0

event_inherited()

sprite_tag_assign("idle", sPlayerIdle)
sprite_tag_assign("walk", sPlayerRun)
sprite_tag_assign("jump", sPlayerJump)
sprite_tag_assign("aim", sPlayerAim)
