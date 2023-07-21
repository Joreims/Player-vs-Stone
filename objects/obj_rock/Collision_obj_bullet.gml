/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7E1DE533
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_game.points"
obj_game.points += 1;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4284390C
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 4B1855B7
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "1"
effect_create_above(0, x + 0, y + 0, 1, $FFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2FD9C19F
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "max" "360"
direction = (random_range(0, 360));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 271DD172
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_rock_big"
if(sprite_index == spr_rock_big)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 638D9BC6
	/// @DnDParent : 271DD172
	/// @DnDArgument : "spriteind" "spr_rock_small"
	/// @DnDSaveInfo : "spriteind" "spr_rock_small"
	sprite_index = spr_rock_small;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 704BDC20
	/// @DnDParent : 271DD172
	/// @DnDArgument : "function" "instance_copy"
	/// @DnDArgument : "arg" "true"
	instance_copy(true);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 625F15B8
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6A3468DE
	/// @DnDParent : 625F15B8
	/// @DnDArgument : "var" "instance_number(spr_rock_small)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "12"
	if(instance_number(spr_rock_small) < 12)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 5691FB7B
		/// @DnDParent : 6A3468DE
		/// @DnDArgument : "spriteind" "spr_rock_big"
		/// @DnDSaveInfo : "spriteind" "spr_rock_big"
		sprite_index = spr_rock_big;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 79D6509D
		/// @DnDParent : 6A3468DE
		/// @DnDArgument : "expr" "-100"
		/// @DnDArgument : "var" "x"
		x = -100;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 326DF644
	/// @DnDParent : 625F15B8
	else
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 04063263
		/// @DnDParent : 326DF644
		instance_destroy();
	}
}