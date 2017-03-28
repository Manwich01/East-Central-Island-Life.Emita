///////////////////////////////////////////
//          initAntiHack.sqf             //
///////////////////////////////////////////
// Init script for antiHacking. Client   //
// monitors, and server will kick the    //
// hacker.                               //
///////////////////////////////////////////

if (isServer) then {
   "dgafHacker" addPublicVariableEventHandler {
      serverCommand Format["#kick %1",dgafHacker];
   };
};

if (!isNull player) then {
   execVM "dgaf\hackMonitor.sqf";
};