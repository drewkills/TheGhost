/// @description 

if(hp = 0)
{
	instance_destroy(self);
}
if(armor > 0)
{
	sprite_index = spr_armoredperson;
}
if(armor = 0)
{
	sprite_index = spr_person;
}