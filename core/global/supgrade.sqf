_art 	= _this select 0;
_item 	= _this select 1;
_vcl	= vehicle player;
_type	= typeof _vcl;

if(_art == "use")then

{

if(_vcl == player)exitwith{player groupchat "you must be in a vehicle"};
if(_vcl iskindof _type call INV_getitemTypeKg > 2)exitwith{player groupchat "you cannot tune this vehicle"};
if(_vcl iskindof "Motorcycle")exitwith{player groupchat "you cannot upgrade this!"};
if(_vcl iskindof "ship")exitwith{player groupchat "you cannot upgrade boats"};
if (!(player == driver vehicle player)) exitWith {player groupChat "You must be the driver to tune this";};
_check = _vcl getVariable "tuning";

	if(_item == "supgrade1") then 
	{
	[_item, -1] call INV_AddInvItem;
	player groupchat "tuning vehicle...";
	_vcl setfuel 0;
	sleep 6;
	_vcl setfuel 1;
	_vcl setvariable ["tuning", 1, true];
	player groupchat "vehicle tuned!";
	}; 

	if(_item == "supgrade2") then 
	{ 
	if(isNil "_check") exitwith {player groupchat "You must first tune with shocks"};
	player groupchat "tuning vehicle...";
	[_item, -1] call INV_AddInvItem; 
	_vcl setfuel 0;
	sleep 7;
	_vcl setfuel 1;
	_vcl setvariable ["tuning", 2, true];
	player groupchat "vehicle tuned!";
	}; 

			 
};
