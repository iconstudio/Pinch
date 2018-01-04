/// @description zui_create(x,y,object,[depth])
/// @function zui_create
/// @param x {real}
/// @param y {real}
/// @param object {object}
/// @param [depth] {real}
var newid = instance_create_depth(0, 0, 0, oZUIDummy)

with (newid) {
 zui_x_node_init()
 __x = argument[0]
 __y = argument[1]
 __parent = other.id
 
 instance_change(argument[2], 1)
 
 if (argument_count >= 4)
  depth = argument[3]

 visible = false
}


zui_add_child(newid)

return newid