//Use this for a global list for admin
execVM "dgaf\functions.sqf";
waitUntil { !alive player ; !isNull (findDisplay 46)};

if (player call isPlayerSpecial) then { 
   sleep 10;
   player addAction [("<t color=""#0074E8"">" + ("Tools Menu") +"</t>"),"admintools\AdminToolsMain.sqf","",5,false,true,"",""];
};


