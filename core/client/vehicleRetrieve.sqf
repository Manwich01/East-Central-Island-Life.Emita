private ["_actionList","_actionObj","_name","_spawnObj","_vehCount","_vehicleGet"];

_spawnObj = (_this select 3) select 0;
_actionObj = (_this select 3) select 1;
_actionList = [];
_vehCount = 0;

if (isciv) then {
   _vehCount = (count civVehicles);
} else {
   _vehCount = (count copVehicles);
};

if (_vehCount == 0) exitWith {
   player groupChat "You do not have a saved vehicle!";
};

if (count (nearestObjects [getPos _spawnObj, ["Ship","car","motorcycle","truck","Air"], 3]) > 0) exitWith {
   player groupChat "There is a vehicle blocking the spawn!";
};

if (isRunning) exitWith {
      player groupChat "You are already retrieving a vehicle!";
};
isRunning = true;
continue = false;

if (isciv) then {
   for "_i" from 0 to (count civVehicles) - 1 do {
      _name = format["Retrieve %1", (civVehicles select _i) call INV_GetItemName];   
      _vehicleGet = format["continue = true; retrievedVehicle = (civVehicles select %1)", _i];
      _actionList set [count _actionList, _actionObj addAction [_name, "core\global\noscript.sqf", _vehicleGet, 1, true, true, "", ""]];
   };
} else {
   for "_i" from 0 to (count copVehicles) - 1 do {
      _name = format["Retrieve %1", (copVehicles select _i) call INV_GetItemName];   
      _vehicleGet = format["continue = true; retrievedVehicle = (copVehicles select %1)", _i];
      _actionList set [count _actionList, _actionObj addAction [_name, "core\global\noscript.sqf", _vehicleGet, 1, true, true, "", ""]];
   };
};

player groupChat "Select a vehicle from the scroll menu!";
waituntil {continue};

//Remove actions that were added.
{ _actionObj removeAction _x; } forEach _actionList;

player groupChat "Retrieving vehicle in 3...";
sleep 1;
player groupChat "Retrieving vehicle in 2...";
sleep 1;
player groupChat "Retrieving vehicle in 1...";
sleep 1;

//Spawn vehicle, and update the saved array.
[retrievedVehicle, _spawnObj] spawn INV_CreateVehicle;

if (isciv) then {
   civVehicles = civVehicles - [retrievedVehicle];
} else {
   copVehicles = copVehicles - [retrievedVehicle];
};

//Reset Back to everything
isRunning = false;