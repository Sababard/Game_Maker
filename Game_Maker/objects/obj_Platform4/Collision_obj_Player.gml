/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_space))
{
	instance_destroy()
	
	var partSYS = part_system_create(partSYS_boom);
	
	part_system_position(partSYS,x,y);
	
	room_instance_add(2, 350,275, obj_Platform4);
}