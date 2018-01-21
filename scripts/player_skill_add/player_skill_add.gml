/// @description player_skill_add(ability, script)
/// @function player_skill_add
/// @param ability { array }
/// @param script { script }

var _data = array_create(2, argument0, argument1)
ds_list_add(global.player_skills, _data)
