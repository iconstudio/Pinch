/// @description zui_x_child_compare(id0,id1) *
/// @function zui_x_child_compare
/// @param id0
/// @param id1

var inst0 = __child[argument0]
var inst1 = __child[argument1]

//show_debug_message(string(argument0) + " vs. " + string(argument1))

var exists0 = instance_exists(inst0)
var exists1 = instance_exists(inst1)

if exists0 and !exists1 {
	return 1
} else if !exists0 and exists1 {
	return 1
} else if exists0 and exists1 {
	//show_debug_message(inst0.id)
	//show_debug_message(inst1.id)
	
	if (inst1.depth == inst0.depth)
		return inst0.id - inst1.id
	else
		return inst1.depth - inst0.depth
} else {
	return 0
}
