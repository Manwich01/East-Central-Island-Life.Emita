waituntil {!alive player ; !isnull (finddisplay 46)}; 
if (isciv) then {
sleep 5;
player addaction [("<t color=""#0000FF"">" + ("Civilian Menu") +"</t>"),"civtools\civtoolsmain.sqf","",5,false,true,"",""];
};