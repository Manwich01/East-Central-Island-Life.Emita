///////////////////////////////////////////////////////////
//                   initClient.sqf                      //
///////////////////////////////////////////////////////////
// Loads up Island Life scripts specific to the clients. //
///////////////////////////////////////////////////////////

//GPS Skin Overlay
["ca\missions_pmc\data\ui_gps_ca.paa", -0.05,0.16] call bis_fnc_customGPS;

["init"] execVM "core\client\food.sqf";
["clientloop"] execVM "core\client\clientLoop.sqf";
[0,0,0,["clientloop"]] execVM "core\client\gangs.sqf";

[ ] execVM "core\client\respawn.sqf";
[ ] execVM "core\client\itemActions.sqf";
[ ] execVM "core\client\petrolActions.sqf";
[ ] execVM "core\client\speedCams.sqf";
[ ] execVM "core\client\nameTags.sqf";
[ ] execVM "core\client\initPlayer.sqf";
[2] execVM "core\client\markers.sqf";
[ ] execVM "core\client\salaries.sqf";
[ ] execVM "core\client\pistolControl.sqf";
[ ] execVM "core\client\shopfarmfaclicenseactions.sqf";
[] execVM "RAV_lifter\InitMan.sqf";
["handy", 1] call INV_AddInvItem;

//This seems like a bad spot for an event handler for code broadcast.
CodeBroadcast = [];
"CodeBroadcast" addPublicVariableEventHandler
{
    _params = _this select 1;
    if(local (_params select 0)) then
    {
        (_params select 1) execVM (_params select 2);
    };
};

player addEventHandler ["fired", {["fired", (_this select 4), (_this select 1)] execVM "core\client\stun.sqf";}];
player addEventHandler ["handleDamage", {_this call compile preprocessFile "core\client\sethit.sqf"}];
waitUntil{vehicle player == player};
player addEventHandler ["fired",{_this execVM "fired.sqf"}];

//Seems like this spawned off loop could be moved.
[] spawn {
   while{true} do {
      sleep 1;
      if(player getVariable "flashed" and isciv) then {
         if (not(alive player)) exitWith {};
         2 cutText ["","WHITE OUT",0];
         sleep 5;
         2 cutText ["","WHITE IN",3];
         sleep 1;
         player setVariable ["flashed",false, true];
      };
	
      if(player getVariable "flashedB") then {
         if (not(alive player)) exitWith {};
         sleep 2.5;
         player say ["flash_bang",5];
         2 cutText ["","WHITE OUT",0];
         sleep 10;
         2 cutText ["","WHITE IN",3];
         sleep 1;
         player setVariable ["flashedB",false, true];
		};
   };
};

PlayerTeam = str(playerSide);
switch (PlayerTeam) do {
   case "CIV": 
   {
      if(!debug)then{["civintro"] execVM "core\client\introcam.sqf";};
      [] execVM "core\client\actions\civactions.sqf";
      onKeyPress = compile preprocessFile "core\client\actions\CivonKeyPress.sqf";
	};

   case "WEST": 
	{
      if(!debug)then{["copintro"] execVM "core\client\introcam.sqf";};
      [] execVM "core\client\actions\copactions.sqf";
      onKeyPress = compile preprocessFile "core\client\actions\CoponKeyPress.sqf";
	};
    
   case "GUER": 
	{
      if(!debug)then{["govintro"] execVM "core\client\introcam.sqf";};
      [] execVM "core\client\actions\govactions.sqf";
      onKeyPress = compile preprocessFile "core\client\actions\govonKeyPress.sqf";
	};
};

["handy", 1] call INV_AddInvItem;
waitUntil {!(IsNull (findDisplay 46))};
(findDisplay 46) displaySetEventHandler ["KeyDown", "_this call onKeyPress"];