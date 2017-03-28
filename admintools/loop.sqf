while {true} do {
   waitUntil {alive player};
   [] execVM "admintools\Activate.sqf";
   waitUntil {!alive player};
};