/////////////////////////////////////
////			          //
//      Copyright © ECIL         //
// www.eastcentralrpg.enjin.com //
/////////////////////////////////


_art  = ((_this select 3) select 0);
_uid = getPlayerUID vehicle player;
	
if (_art == 1) then {
	if !(_uid in allowedcamera) then
	{
	player groupchat "Admin spectate is for admins only silly goose";
	}
	else
	{
	player addaction ["Admin Spectate Camera", "gcam\gcam.sqf",[],1,false,true,"",""];
	};
};
