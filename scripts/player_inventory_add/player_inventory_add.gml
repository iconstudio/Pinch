/// @description player_inventory_add(item, [number = 1], [script = -1])
/// @function player_inventory_add
/// @param item { string }
/// @param number { integer }
/// @param script { script }

var _number = 1
if argument_count > 1
	_number = argument[1]

if _number > 0 {
	var _data = array_create(2, argument[0], _number)
	ds_list_add(global.player_inventory, _data)
}

if argument_count > 2
	script_execute(argument[2], id)
