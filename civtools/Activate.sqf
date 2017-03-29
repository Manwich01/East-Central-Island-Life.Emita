waitUntil { !alive player && !isNull (findDisplay 46)}; 
if (isciv) then {
sleep 5;
player addAction [("<t color=""#0000FF"">" + ("Civilian Menu") +"</t>"),"civtools\civtoolsmain.sqf","",5,false,true,"",""];
};