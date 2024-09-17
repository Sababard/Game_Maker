// goes to title screen
room_instance_clear(rm_GameOver)
room_instance_add(rm_GameOver,0,672, obj_homebutton)
room_instance_add(rm_GameOver,0,0, obj_gamecontoller)
room_goto(rm_TitleScreen);