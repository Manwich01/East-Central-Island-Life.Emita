/////////////////////////////////////////////////////////////////
//                      restrain.sqf                           //
/////////////////////////////////////////////////////////////////
// Scripted with a list of arguments for all your restraining  //
// needs!!                                                     //
/////////////////////////////////////////////////////////////////

//Declaring variables
private ["_action", "_canArrest", "_cityMarkers", "_target", "_unitArray"];

_unitArray = nearestObjects [getPos player, ["Man"], 5];
_target = objNull;
_action = _this select 3;
_cityMarkers = ["city1", "city2", "city3", "city4", "city5"];
_canArrest = true;

/******************************
 * Restrain Action 
 * User will restrain a target
 */
if (_action == "restrain") then {
   
   {
      player groupChat format["player: %1", _x];
      if (_x in civArray) exitWith {
         _target = _x;
      };
   } forEach _unitArray;
   
   if (!(_target in civarray)) exitWith { player groupChat "You aren't restraining a civilian!"; };
   if( vehicle _target != _target ) exitWith { player groupChat "the civilian is in a vehicle!" };
   
   if (player distance _target <= 5) exitWith { 
      (format ["%1 switchMove ""%2"";", _target, "civillying01"]) call broadcast;
		(format['server globalChat "%1 was handcuffed by %2";', name _target, name player]) call broadcast;
   };
};

/******************************
 * Restrain Cop Action 
 * User will restrain a Cop. Oh boy!!!
 */
if (_action == "restrainCop") then {
   if (player != cop1) exitWith { player groupChat "You don't have the authority to restrain a cop!"; };
   if (!_target in coparray) exitWith { player groupChat "You aren't restraining a cop!"; };
   
   {
      if ((player distance getMarkerPos _x) < 500) exitWith { _canArrest = false; };
   } forEach _cityMarkers;

   if (!_canArrest) exitWith { "You have no jurisdiction to arrest cops here"; };
   if( vehicle _target != _target ) exitWith { player groupChat "the cop is in a vehicle!" };
   
   if (player distance _target <= 5) exitWith { 
      (format ["%1 switchMove ""%2"";", _target, "civillying01"]) call broadcast;
		(format['server globalChat "%1 was handcuffed by %2";', name _target, name player]) call broadcast;
   };
};

/******************************
 * Release Action
 * If a civilian is restrained, you could release them
 */
if (_action == "release") then {
   if (!_target in civarray) exitWith { player groupChat "You aren't releasing a civilian!"; };
   if( vehicle _target != _target ) exitWith { player groupChat "the civilian is in a vehicle!" };
   
   if (player distance _target <= 5) then {
      if (animationState _target == "civillying01") exitWith {
         (format ["%1 switchMove ""%2"";", _target, "amovppnemstpsnonwnondnon"]) call broadcast;
         player groupChat "You've release the civilian!";
      };
   };
};

if (_action == "test") then {
   _ret = false;
   {
      if (_x in civarray) then {
         if (animationState _x != "civillying01") exitWith {
            _ret = true;
         };
      };
   }forEach(nearestObjects[getPos player,["MAN"],5]);
   
   hintSilent format ["Can cop restrain: %1", _ret];
};