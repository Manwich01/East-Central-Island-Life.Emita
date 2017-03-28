//////////////////////////////////////////////////////////
//                  initServer.sqf                      //
//////////////////////////////////////////////////////////
// Loads up Island Life scripts specific to the server. //
//////////////////////////////////////////////////////////

execVM "lifeserver\init.sqf";
execVM "core\server\stationrobloop.sqf";
execVM "core\server\robpool.sqf";

[0,0,0,["serverloop"]] execVM "core\global\taxi.sqf";
[0,0,0,["serverloop"]] execVM "core\global\assassination.sqf";
[0,0,0,["serverloop"]] execVM "core\global\hostage.sqf";
[0,0,0,["serverloop"]] execVM "core\client\gangs.sqf";