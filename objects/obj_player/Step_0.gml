/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 13502902
/// @DnDArgument : "key" "ord("W")"
var l13502902_0;
l13502902_0 = keyboard_check(ord("W"));
if (l13502902_0)
{
	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 32082F99
	/// @DnDParent : 13502902
	/// @DnDArgument : "dir" "image_angle"
	/// @DnDArgument : "speed" "0.1"
	motion_add(image_angle, 0.1);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 6BA6226B
/// @DnDArgument : "key" "ord("A")"
var l6BA6226B_0;
l6BA6226B_0 = keyboard_check(ord("A"));
if (l6BA6226B_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 649D3F1E
	/// @DnDParent : 6BA6226B
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += 4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2B86C6E4
/// @DnDArgument : "key" "ord("D")"
var l2B86C6E4_0;
l2B86C6E4_0 = keyboard_check(ord("D"));
if (l2B86C6E4_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 11A31379
	/// @DnDParent : 2B86C6E4
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += -4;
}

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 2F2041AE
move_wrap(1, 1, 0);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 1C2E5EB1
var l1C2E5EB1_0;
l1C2E5EB1_0 = mouse_check_button_pressed(mb_left);
if (l1C2E5EB1_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0CD9A7F7
	/// @DnDParent : 1C2E5EB1
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bullet"
	/// @DnDSaveInfo : "objectid" "obj_bullet"
	instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);
}