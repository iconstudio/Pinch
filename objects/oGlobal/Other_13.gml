/// @description Show notification

if ds_list_size(notification_list) > 0 {
	//var _notific = ds_list_find_value(notification_list, 0) // array
	ds_list_delete(notification_list, 0)
	
	with oNotification
		begin_y += 100
	
	var _nofi = instance_create_depth(0, 0, -5000, oNotification)
	_nofi.callback = self
	_nofi.caption = construct[1]
	_nofi.description = construct[2]
	_nofi.icon = construct[0]
}
