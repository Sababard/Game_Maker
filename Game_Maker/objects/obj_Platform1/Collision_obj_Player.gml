/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_space))
{
	instance_destroy()
	
	room_instance_add(2, 250,175, obj_Platform1);
}