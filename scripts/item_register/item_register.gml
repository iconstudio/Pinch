/// @description item_register(item, name, description, alt, [attributes])
/// @function item_register
/// @param item { string }
/// @param name { string }
/// @param description { string }
/// @param alt { string }
/// @param [attribute] { array }

var attribute
if argument_count > 4
	attribute = argument[4]
else
	attribute = []

var data = array_create(argument[1], argument[2], argument[3], attribute)

return ds_map_add(global.item_dictionary, argument[0], data)
