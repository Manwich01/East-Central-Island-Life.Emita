////////////////////////////////////////
//             init.sqf               //
////////////////////////////////////////
// Entry point for mission scripting. //
// This includes both server and      //
// clients.                           //
////////////////////////////////////////

//Disable saving for the missions
enableSaving [false, false];

version        	= "4.0";
debug          	= false;
dedicatedServer = false;
copscount      	= 16;
civscount      	= 42;
playercount    	= 58;
debugarray     	= [];

execVM "briefing.sqf";

//JIP Safe Check
waitUntil { (((time > 1) && (alive player)) || (isServer)) };

// Island Life Initialization
execVM "core\init.sqf";

//Other Initializations
call compile preProcessFile "Scripts\triggers.sqf";
execVM "BTK\Cargo Drop\Start.sqf";

execVM "Scripts\motd.sqf";
execVM "dgaf\initAntiHack.sqf";

execVM "civtools\loop.sqf"; 
execVM "admintools\loop.sqf";

setPitchBank = compile preprocessFile "Scripts\setPitchBank.sqf";
BIS_Effects_Burn=compile preprocessFile "\ca\Data\ParticleEffects\SCRIPTS\destruction\burn.sqf";

if (!isDedicated) then {
   [] execVM "Scripts\saver.sqf";
   [] execVM "Scripts\loadclient.sqf";
};