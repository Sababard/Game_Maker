/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_space))
{
	instance_destroy()
	
	if(object_get_sprite(obj_title1) == -1)
	{
		object_set_sprite(obj_title1,Sp_Platform6)
		
	}
	else if(object_get_sprite(obj_title2) == -1)
	{
			object_set_sprite(obj_title2,Sp_Platform6)
	}
	else if(object_get_sprite(obj_title3) == -1)
	{
			object_set_sprite(obj_title3,Sp_Platform6)
	}
	else if(object_get_sprite(obj_title4) == -1)
	{
			object_set_sprite(obj_title4,Sp_Platform6)
	}
	else if(object_get_sprite(obj_title5) == -1)
	{
			object_set_sprite(obj_title5,Sp_Platform6)
	}
	else if(object_get_sprite(obj_title6) == -1)
	{
			object_set_sprite(obj_title6,Sp_Platform6)
	}
	else if(object_get_sprite(obj_title7) == -1)
	{
			object_set_sprite(obj_title7,Sp_Platform6)
	}
	else if(object_get_sprite(obj_title8) == -1)
	{
			object_set_sprite(obj_title8,Sp_Platform6)
	}
	else if(object_get_sprite(obj_title9) == -1)
	{
			object_set_sprite(obj_title9,Sp_Platform6)
	}
	else if(object_get_sprite(obj_title10) == -1)
	{
			object_set_sprite(obj_title10,Sp_Platform6)
	}
	else if(object_get_sprite(obj_title11) == -1)
	{
			object_set_sprite(obj_title11,Sp_Platform6)
	}
	else if(object_get_sprite(obj_title12) == -1)
	{
		object_set_sprite(obj_title12,Sp_Platform6)
	}
	
	
	var partSYS = part_system_create(partSYS_boom);
	
	part_system_position(partSYS,x,y);
	
	//room_instance_add(2, 750,275, obj_Platform6);
}