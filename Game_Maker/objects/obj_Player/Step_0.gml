//player movement

move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
move_x *= move_speed;

// checks for the ground for collision
if (place_meeting(x, y+2, obj_CollisionWall))
{
	move_y = 0;
	
	// jumping
	if (keyboard_check(vk_space))
	{
		move_y = -jump_speed;
		audio_sound_pitch(SNjump,choose(0.8,1.0,1.2));
		audio_play_sound(SNjump,4,false);
	}

}

// collision to not get stuck in wall
if(place_meeting(x, y, obj_CollisionWall))
{
	for (var i = 0; i < 1000; i++)
	{
		//Right
		if (!place_meeting(x+i, y, obj_CollisionWall))
		{
			x += i;
			break
		}
		//Left
		if (!place_meeting(x-i, y, obj_CollisionWall))
		{
			x -= i;
			break
		}
		//Up
			if (!place_meeting(x, y-i, obj_CollisionWall))
		{
			y -= i;
			break
		}
		//Down
			if (!place_meeting(x, y+i, obj_CollisionWall))
		{
			y += i;
			break
		}
		//Top Right
			if (!place_meeting(x+i, y-i, obj_CollisionWall))
		{
			x+=i;
			y -=i;
			break
		}
		//Top Left
			if (!place_meeting(x-i, y-i, obj_CollisionWall))
		{
			x-=i;
			y -=i;
			break
		}
		//Bottom Right
			if (!place_meeting(x+i, y+i, obj_CollisionWall))
		{
			x+=i;
			y +=i;
			break
		}
		//Bottom Left
				if (!place_meeting(x-i, y+i, obj_CollisionWall))
		{
			x-=i;
			y +=i;
			break
		}
	}
	
}
// gravity
else if (move_y < 10) 
	move_y += .5;

	
move_and_collide(move_x, move_y, obj_CollisionWall);

if (move_x != 0) image_xscale = sign(move_x);


// animation
if (!place_meeting(x,y+2,obj_CollisionWall))
{
	// gets airbrone sprite
	sprite_index = Robot_Jump;
	// mutiplication of image speed
	image_speed = 0;
	// inline if else statement
	if (sign(move_y) > 0) image_index = 1; else image_index = 0;	
}
else
{
	if (sprite_index == Robot_Jump) 
	{
		// audio for landing
		audio_sound_pitch(SNland,choose(0.8,1.0,1.2));
		audio_play_sound(SNland,4,false);
		
		// spawns dust, then disappear once animation is done.
		repeat(8)
		{
			with (instance_create_layer(x,bbox_bottom,"dust",oDust))
			{
				move_y = 0;
				
			}
		}
	}
	// running animation
	image_speed = 1;
	// when the hsp has a value higer then 0 it'll use the run animation
	if (move_x == 0)
	{
		sprite_index = Robot;	
	}
	else
	{
		sprite_index = Robot_Walk;
	}
}

// flips image to the left
//if (move_x != 0) image_xscale = sign(move_x);