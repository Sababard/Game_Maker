if (room = rm_Level1)
{
	
if (obj_manager.alarm[0] <= 300)
hsp = 1 * movespeed
if(obj_manager.alarm[0] >= 150)
{
hsp = 1 * -movespeed
}

if (hsp < 0)
{
	image_xscale = sign(hsp)
}
if (hsp >0)
{
	image_xscale = sign(hsp)
}

if (!place_meeting(x,y+1, obj_CollisionWall))
	{
		vsp += grav
	}

// horizontal collision
if (place_meeting(x + hsp, y, obj_CollisionWall))
	{
		while( !place_meeting(x+sign(hsp), y ,obj_CollisionWall))
		{
			x += sign(hsp)
		}
	hsp = 0
	}
x += hsp

// vertical collision
if (place_meeting(x, y + vsp, obj_CollisionWall))
	{
		while( !place_meeting(x, y +sign(vsp),obj_CollisionWall))
		{
			y += sign(vsp)
		}
	vsp = 0
	}	
y += vsp;

}