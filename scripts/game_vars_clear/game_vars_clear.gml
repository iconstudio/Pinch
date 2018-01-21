/// @description game_vars_clear()
/// @function game_vars_clear

global.my_player = noone
ds_list_clear(global.player_inventory)
ds_list_clear(global.player_items)
ds_list_clear(global.player_skills)
