/// @description game_vars_clear()
/// @function game_vars_clear

ds_list_clear(global.player_inventory)
ds_list_clear(global.player_items)
ds_list_clear(global.player_skills)

global.paused = false
global.my_player = noone

global.vscore = 0 // virtual score
global.dscore = 0 // destination score
