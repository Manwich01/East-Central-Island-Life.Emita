///////////////////////////////////////////////////////////
//                       init.sqf                        //
///////////////////////////////////////////////////////////
// Entry initialization for Island Life related scripts  //
///////////////////////////////////////////////////////////

///////////////////////
//Variables/Functions//
///////////////////////

//HOTFIX For Respawn
JIP_Stats_Ready = false;

//HOTFIX For Holstering
unholsterPistol = -1;
holsterPistol = -1;

//HOTFIX For NameTags.sqf
shopusearray = [];

_h = [] execVM "core\variables\playerarrays.sqf";																												
waitUntil{scriptDone  _h};
_h = []	execVM "core\functions\savevarfuncs.sqf";
waitUntil{scriptDone  _h};
_h = []	execVM "core\functions\customfunctions.sqf";
waitUntil{scriptDone  _h};
_h = []	execVM "core\functions\strfuncs.sqf";
waitUntil{scriptDone  _h};
_h = []	execVM "core\functions\1007210.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "core\functions\4422894.sqf";
waitUntil{scriptDone  _h};
_h = [65, rolenumber] execVM "core\functions\broadcast.sqf";
waitUntil{scriptDone  _h};
_h = [playerarray, playerstringarray, !iscop] execVM "core\variables\INVvars.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "core\variables\bankvariables.sqf";
waitUntil {scriptDone _h};
_h = [] execVM "core\variables\workplacesettings.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "core\variables\gfx.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "core\variables\animList.sqf";
waitUntil{scriptDone  _h};
_h = []	execVM "core\functions\miscfunctions.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "core\variables\variables.sqf";
waitUntil{scriptDone  _h};

//Global (Regardless of server/client)
[] execVM "core\global\interest.sqf";
[] execVM "core\global\weather.sqf";

//Server Scripts
if (isServer) then {
   execVM "core\initServer.sqf";
};

//Client Scripts
if (!isNull player) then {
   execVM "core\initClient.sqf";
};