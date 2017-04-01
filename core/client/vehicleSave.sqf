private ["_foundVehicle", "_futureIncome", "_tmpArry", "_vcl", "_vclClass", "_vehCount"];

_vehCount = count civVehicles;
_futureIncome = curIncome - (_vehCount * 100);
_foundVehicle = false;

if (_futureIncome <= 0) exitWith {
   player groupChat "You cannot afford to store this vehicle!!!";
};

_tmpArry = nearestObjects [getPos player, ["LandVehicle"], 3];
{
   if (_x in INV_VehicleArray) exitWith { _vcl = _x; _foundVehicle = true; };
} forEach _tmpArry;

if (!_foundVehicle) exitWith {
   player groupChat "Could not find your vehicle!!!"; 
};

_vclClass = typeOf _vcl;

if (isciv) then {
   civVehicles set [count civVehicles, _vclClass];
   _vehCount = count civVehicles;
   ["civVehicles", civVehicles] call ClientSaveVar;
} else {
   copVehicles set [count copVehicles, _vclClass];
   _vehCount = count copVehicles;
   ["copVehicles", copVehicles] call ClientSaveVar;
};
   
deleteVehicle _vcl;
player groupChat format ["Vehicle has been stored. You have %1 vehicle(s) stored. Your current expenses are %2", _vehCount, (_vehCount * 100)];

