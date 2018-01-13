/// @description player_itemstack_add(item)
/// @function player_itemstack_add
/// @param item { constant }

var _olddata, _data
for (var i = 0; i < ds_list_size(global.player_items); ++i) {
	_olddata = ds_list_find_value(global.player_items, i)
	
	if _olddata[0] == argument0 {
		ds_list_delete(global.player_items, i)
		_data = array_create(2, argument0, _olddata[1])
		ds_list_insert(global.player_items, i, _data)
		exit
	}
}

_data = array_create(2, argument0, 1)
ds_list_add(global.player_items, _data)
