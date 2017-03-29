//Use this for a global list for admin
_h = execVM "dgaf\functions.sqf";
waitUntil {scriptDone _h};

if (player call isPlayerSpecial) then { 
   sleep 10;
   player addAction [("<t color=""#0074E8"">" + ("Tools Menu") +"</t>"),"admintools\AdminToolsMain.sqf","",5,false,true,"",""];
};


