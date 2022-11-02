// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function eightMovementControls(right, left, up, down){
	hInput = keyboard_check(right) - keyboard_check(left);
	vInput = keyboard_check(down) - keyboard_check(up);
}

function eightMovement(right, upRight, up, upLeft, left, downLeft, down, downRight) {
	if (hInput != 0 or vInput != 0) {
		dir = point_direction(0, 0, hInput, vInput);
		xSpeed = lengthdir_x(moveSpeed, dir);
		ySpeed = lengthdir_y(moveSpeed, dir);
		
		if place_meeting(x+xSpeed,y,wallObject){
			xSpeed = 0;
		}
		if place_meeting(x,y+ySpeed,wallObject){
			ySpeed = 0;
		}
		
		x += xSpeed;
		y += ySpeed;

	
		//Sprites
		switch(dir) {
			case 0: sprite_index = right; break;
			case 45: sprite_index = upRight; break;
			case 90: sprite_index = up; break;
			case 135: sprite_index = upLeft; break;
			case 180: sprite_index = left; break;
			case 225: sprite_index = downLeft; break;
			case 270: sprite_index = down; break;
			case 315: sprite_index = downRight; break;
		}
	}
}