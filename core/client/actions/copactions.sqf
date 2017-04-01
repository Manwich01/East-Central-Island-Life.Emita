_role = player;
_tempAction = 0;

//TODO: Move this to a more friendly area
/**
 * canCopRestrain
 * Checks to see if the restrain action is possible
 */
canCopRestrain = {
   _ret = false;
   {
      if (_x in civarray) then {
         if ((animationState _x) != "civillying01") exitWith {
            _ret = true;
         };
      };
   }forEach(nearestObjects[getPos player,["MAN"],5]);
   
   _ret
};
/**
 * canCopRestrain
 * Checks to see if the restrain action is possible for cops
 */
canCopRestrainCop = {
   _ret = false;
   {
      if (_x in coparray) then {
         if (_x != player) then {
            if ((animationState _x) != "civillying01") exitWith {
               _ret = (player == cop1);
            };
         };
      };
   }forEach(nearestObjects[getPos player,["MAN"],5]);
   
   _ret
};

//=======================   ADMIN CAMERA ==============================================
_tempAction = _role addaction ["Admin Spectate","tcgcode.sqf",[1],1,false,true,"","player distance rubblepile <= 3"];
actionList set [count actionList, _tempAction];
//=====================================Elevator==============================================
_tempAction = _role addaction ["Up Elevator","elevator.sqf",[1],1,false,true,"",'player distance getmarkerpos "elevator1" <= 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Down Elevator","elevator.sqf",[2],1,false,true,"",'player distance elevator2 <= 5'];
actionList set [count actionList, _tempAction];
//===================================== ASSASSINATION =================================================
_tempAction = _role addaction ["Escort VIP", "core\global\noscript.sqf", "[VIPtarget] join (group player); player groupchat ""escort the VIP to the police base before he is assassinated!"";",1,false,true,"","player distance VIPtarget < 5 and iscop"];
actionList set [count actionList, _tempAction];
//===================================== TARGET RESET ==================================================
_tempAction = _role addaction ["Reset Targets","core\global\noscript.sqf",'{_x animate["terc",0]} foreach (nearestobjects [getpos player, ["TargetEpopup"],  500])',1,true,true,"",'player distance targetrange1 < 10'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Reset targets","core\global\noscript.sqf",'{_x animate["terc",0]} foreach (nearestobjects [getpos player, ["TargetEpopup"],  500])',1,true,true,"",'player distance targetrange2 < 10'];
actionList set [count actionList, _tempAction];
//===================================== IMPOUND AREA==================================================
_tempAction = _role addaction ["Impound Lot","core\client\maindialogs.sqf",["impound"],1,false,true,"","player distance atm2 <= 5"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Impound Lot","core\client\maindialogs.sqf",["impound"],1,false,true,"","player distance copcar <= 5"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Impound Lot","core\client\maindialogs.sqf",["impound"],1,false,true,"","player distance atm4 <= 5"];
actionList set [count actionList, _tempAction];
//================================== COP DELETE EVIDENCE ================================================
_tempAction = _role addaction ["Take criminal evidence","core\global\noscript.sqf",'player groupchat "evidence removed."; {deletevehicle _x} foreach (nearestobjects [getpos player, ["weaponholder"], 3])',1,true,true,"",'_weps = (nearestobjects [getpos player, ["weaponholder"], 3] select 0); player distance _weps < 5 and iscop'];
actionList set [count actionList, _tempAction];
//================================== COP SLAVE ACTIONS ================================================
//_tempAction = _role addaction ["Who do you work for","core\global\noscript.sqf",'player groupchat format["this slave works for %1.", leader (nearestobjects [getpos player, civslavearray,  3] select 0)]',1,true,true,"",'_slave = (nearestobjects [getpos player, civslavearray, 3] select 0); !(_slave in playerarray) and player distance _slave < 5 and (leader _slave) in playerarray and iscop'];
//actionList set [count actionList, _tempAction];
//_tempAction = _role addaction ["Set slave free","core\global\noscript.sqf",'_slave = (nearestobjects [getpos player, civslavearray,  3] select 0); _civ = leader _slave; deletevehicle _slave; (format ["[""slave"", %1] spawn Isse_AddCrimeLogEntry; if(!(""being a slaver"" in %1_reason))then{%1_reason = %1_reason + [""being a slaver""]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 20000;", _civ]) call broadcast;player groupchat "the slave has been freed!";',1,true,true,"",'_slave = (nearestobjects [getpos player, civslavearray, 3] select 0); !(_slave in playerarray) and player distance _slave < 5 and (leader _slave) in playerarray and iscop'];
//actionList set [count actionList, _tempAction];
//==================================== OBJECT ACTIONS =================================================
_tempAction = _role addaction ["Take Scuba Gear","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("gnt_scubaw" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["gnt_scubaw"],  10] select 0);["gnt_scubaw", 1] call INV_AddInvItem;player groupchat "you picked up scuba gear";',1,true,true,"",'player distance (nearestobjects [getpos player, ["gnt_scubaw"],  10] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Spike Strip","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("spikestrip" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["spikestrip"],  10] select 0);["spikestrip", 1] call INV_AddInvItem;player groupchat "you picked up a spike strip";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["spikestrip"],  10] select 0) < 7'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Stop Sign","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("glt_roadsign_octagon" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["glt_roadsign_octagon"],  10] select 0);["glt_roadsign_octagon", 1] call INV_AddInvItem;player groupchat "you picked up a stop sign";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["glt_roadsign_octagon"],  10] select 0) < 7'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Concrete Barrier Short","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("il_barrier" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["il_barrier"],  10] select 0);["il_barrier", 1] call INV_AddInvItem;player groupchat "You picked up a Concrete Barrier Short";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["il_barrier"],  10] select 0) < 7'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Searchlight","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("SearchLight_UN_EP1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["SearchLight_UN_EP1"], 3] select 0);["SearchLight_UN_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a searchlight";',1,true,true,"",'_light = (nearestobjects [getpos player, ["SearchLight_UN_EP1"],  3] select 0); !(_light in speedcamarray) and player distance _light < 5 and iscop'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Roadblock","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("roadblock" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_CncBlock_Stripes"],  3] select 0);["roadblock", 1] call INV_AddInvItem;player groupchat "you picked up a roadblock";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_CncBlock_Stripes"],  3] select 0) < 5 and iscop'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Bargate","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("Bargate" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0);["Bargate", 1] call INV_AddInvItem;player groupchat "you picked up a bargate";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0) < 7'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Road Cone","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("roadcone" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_coneLight"],  3] select 0);["roadcone", 1] call INV_AddInvItem;player groupchat "you picked up a road cone";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_coneLight"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Open/close gate","core\global\noscript.sqf",'_gate = (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0); if(_gate animationPhase "bargate" == 1)then{_gate animate ["bargate", 0]}else{_gate animate ["bargate", 1]};',1,true,true,"",'player distance (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0) < 7 and iscop'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Open/close gate","core\global\noscript.sqf",'_gate = (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0); if(_gate animationPhase "bargate" == 1)then{_gate animate ["bargate", 0]}else{_gate animate ["bargate", 1]};',1,true,true,"",'player distance (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0) < 7 and isciv'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Bunker (small)","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("bunkersmall" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_fortified_nest_small"],  3] select 0);["bunkersmall", 1] call INV_AddInvItem;player groupchat "you picked up a bunker (small)";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["Land_fortified_nest_small"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Danger Sign","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("danger" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Sign_Danger"],  3] select 0);["danger", 1] call INV_AddInvItem;player groupchat "you picked up a danger sign";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Sign_danger"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
//_tempAction = _role addaction ["Gather Evidence","core\client\invest.sqf",'',1,true,true,"",'player distance (nearestobjects [getpos player, ["body"],  3] select 0) < 2'];
//actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove ladder","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("land_ladder_half" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["land_ladder_half"],  3] select 0);["land_ladder_half", 1] call INV_AddInvItem;player groupchat "you picked up a ladder";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["land_ladder_half"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Road Barrier","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("Land_RedWhiteBarrier" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_RedWhiteBarrier"],  3] select 0);["Land_RedWhiteBarrier", 1] call INV_AddInvItem;player groupchat "you picked up a road barrier";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["Land_RedWhiteBarrier"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Road Barrier","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("Roadbarrier_long" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["RoadBarrier_long"],  3] select 0);["RoadBarrier_long", 1] call INV_AddInvItem;player groupchat "you picked up a road barrier";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["RoadBarrier_long"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Road Barrier","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("RoadBarrier_light" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["RoadBarrier_light"],  3] select 0);["RoadBarrier_light", 1] call INV_AddInvItem;player groupchat "you picked up a road barrier";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["RoadBarrier_light"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Put Cop in Car","core\client\preArrestcop.sqf",[],1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray and player == cop1'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Arrest Cop","core\client\arrestcop.sqf",[],1,true,true,"","player == cop1"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Cleanup Bodybag","core\global\noscript.sqf",'deletevehicle (nearestobjects [getpos player, ["body"],  3] select 0);["geld", 1000] call INV_AddInvItem;player groupchat "You removed a bodybag and have received a cash reward for doing so";',1,true,true,"",'player distance (nearestobjects [getpos player, ["body"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
// New Actions
_tempAction = _role addAction ["Restrain Cop", "core\client\restrain.sqf", "restrainCop", 1, true, true, "", "call canCopRestrainCop"];
actionList set [count actionList, _tempAction];
_tempAction = _role addAction ["Restrain", "core\client\restrain.sqf", "restrain", 1, true, true, "", "call canCopRestrain"];
actionList set [count actionList, _tempAction];
//================================== COP CHIEF ELECTION ===============================================
_tempAction = _role addaction ["Elect a Chief","core\client\maindialogs.sqf",["chief"],1,false,true,"","player distance rathaus <= 3 and iscop"];
actionList set [count actionList, _tempAction];
//==================================== MAYOR ELECTION =================================================
_tempAction = _role addaction ["Elect a Governor","core\client\maindialogs.sqf",["wahlen"],1,false,true,"","player distance rathaus <= 3"];
actionList set [count actionList, _tempAction];
//===================================== BUY INSURANCE ===================================================
//_tempAction = _role addaction [format["Buy Bank Insurance ($%1)", ("bankversicherung" call INV_getitemBuyCost)],"core\global\noscript.sqf",'if("geld" call INV_GetItemAmount < ("bankversicherung" call INV_getitemBuyCost))exitwith{player groupchat "not enough money"};["geld", -("bankversicherung" call INV_getitemBuyCost)] call INV_AddInvItem;["bankversicherung", 1] call INV_AddInvItem;player groupchat format["you bought bank insurance for $%1", ("bankversicherung" call INV_getitemBuyCost)];',1,false,true,"","player distance bailflag <= 3"];
//actionList set [count actionList, _tempAction];
//======================================= CRIMELOG ====================================================
_tempAction = _role addaction ["Crime Log","core\client\maindialogs.sqf",["coplog"],1,false,true,"","player distance rathaus <= 3"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction [format ["Buy K9 ($%1)", dog_cost],"core\client\copdog.sqf", ["buydog"],1,false,true,"","player distance dogspawn <= 5 and (player == cop1 or player == cop2 or player == cop13)"];
actionList set [count actionList, _tempAction];
//_tempAction = _role addaction [format ["Buy K9 ($%1)", dog_cost],"core\client\civdog.sqf", ["buydog"],1,false,true,"","player distance dogspawn1 <= 5"];
//actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Who do you work for?","core\global\noscript.sqf",'player groupchat format["this hooker works for %1.", leader (nearestobjects [getpos player, civworkerarray,  3] select 0)]',1,true,true,"",'_slave = (nearestobjects [getpos player, civworkerarray, 3] select 0); !(_slave in playerarray) and player distance _slave < 5 and (leader _slave) in playerarray and iscop'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Send hooker home","core\global\noscript.sqf",'_slave = (nearestobjects [getpos player, civworkerarray,  3] select 0); _civ = leader _slave; deletevehicle _slave; (format ["[""slave"", %1] spawn Isse_AddCrimeLogEntry; if(!(""being a pimp"" in %1_reason))then{%1_reason = %1_reason + [""being a pimp""]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 20000;", _civ]) call broadcast;player groupchat "the hooker has been sent home!";',1,true,true,"",'_slave = (nearestobjects [getpos player, civworkerarray, 3] select 0); !(_slave in playerarray) and player distance _slave < 5 and (leader _slave) in playerarray and iscop'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Get in trailer","core\client\trucking.sqf",[4],1,true,true,"",'_vcl = (nearestobjects [getpos player, ["cl_del_mackr","cl_trucktest_mackr","cl_flatbed_mackr"], 5] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Search trailer","core\client\trucking.sqf",[5],1,true,true,"",'_carg = (nearestobjects [getpos player, ["Land_bags_stack_EP1","Land_bags_EP1","Land_Bag_EP1"], 2] select 0);player distance _carg < 2 and iscop'];
actionList set [count actionList, _tempAction];
//====================================== VEHICLE ACTIONS ================================================
_tempAction = _role addaction [localize "STRS_addaction_trunk_see","core\global\noscript.sqf",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);_str = format["%1_storage", _vcl];[_str] execVM "core\client\vehiclecheck.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and !(_vcl in INV_VehicleArray) and _vcl in INV_ServerVclArray and iscop'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction [localize "STRS_addaction_trunk_check","core\global\noscript.sqf",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);_str = format["%1_storage", _vcl];if([_vcl,_str] call INV_RemoveIllegalStorage)then{call compile format["publicvariable ""%1"";", _str]};',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and !(_vcl in INV_VehicleArray) and _vcl in INV_ServerVclArray and iscop'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Pull out","core\global\noscript.sqf",'(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0) execVM "core\client\pullout.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and count (crew _vcl) > 0 and _vcl in INV_ServerVclArray and (call INV_isArmed)'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction [localize "STRS_addAction_vehicleinfo","core\global\noscript.sqf",'(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0) execVM "core\client\vehinfo.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Put civilian in car","core\client\preArrest.sqf",[],1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray and iscop'];
actionList set [count actionList, _tempAction];
//======================================== SHOP EXPORT ==================================================
_num1 = (shop1 call INV_getshopnum);
_num2 = (shop2 call INV_getshopnum);
_num4 = (shop4 call INV_getshopnum);
_num5 = (pdfood call INV_getshopnum);
_tempAction = _role addaction ["Shop 1 export","core\client\shopdialogs.sqf",[_num1],1,false,true,"","player distance shop1export <= 3"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Shop 2 export","core\client\shopdialogs.sqf",[_num2],1,false,true,"","player distance shop2export <= 3"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Shop 4 export","core\client\shopdialogs.sqf",[_num4],1,false,true,"","player distance shop4export <= 3"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Food and Candy","core\client\shopdialogs.sqf",[_num5],1,false,true,"",'player distance (nearestobjects [getpos player, ["ibr_van_BNK"],  10] select 0) < 3'];
actionList set [count actionList, _tempAction];
//========================   unflip vehicle     ================================
_tempAction = _role addaction ["Unflip vehicle","core\client\unflipvehicle.sqf",["unflip"],1,false,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_VehicleArray'];
actionList set [count actionList, _tempAction];
//=========================    Cop Patrol actions/BUS   ==============================
_tempAction = _role addaction ["Get patrol mission","core\client\coppatrol.sqf",["start"],1,false,true,"","iscop and (player distance copbank <= 4 or player distance atm4 <= 4) and !pmissionactive and !patrolwaittime"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Cancel patrol mission","core\client\coppatrol.sqf",["end"],1,false,true,"","iscop and pmissionactive and player distance copbank <= 4"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Get Security mission","core\client\coppatrol.sqf",["start1"],1,false,true,"","iscop and player distance copbank <= 4 and !pmissionactive1 and !patrolwaittime1"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Cancel Security mission","core\client\coppatrol.sqf",["end1"],1,false,true,"","iscop and pmissionactive1 and player distance copbank <= 4"];
actionList set [count actionList, _tempAction];
//=======================Cherry light ===================================================
//_tempAction = _uccar addAction ["Remove Cherry Light", "Cherryr.sqf"];
//actionList set [count actionList, _tempAction];
//=======================Jail Doors===================================================
//action250 = _role addaction ["Open Jail Door","core\client\jaildoor.sqf",["open"],1,false,true,"",'(iscop) and (player distance jaild < 3) and (policehq animationPhase "jdoor" < 0.5)'];
//_tempAction set [count actionList, _tempAction];
//action251 = _role addaction ["Close Jail Door","core\client\jaildoor.sqf",["close"],1,false,true,"",'(iscop) and (player distance jaild < 3) and (policehq animationPhase "jdoor" >= 0.5)'];
//_tempAction set [count actionList, _tempAction];
//========================= Vehicle Save ========================================
_tempAction = _role addaction ["Store Vehicle", "core\client\vehicleSave.sqf", [], 1, false, true, "", "player distance carSave1 <= 5"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Retrieve Vehicle", "core\client\vehicleRetrieve.sqf", [ccarspawn, carSave1], 1, false, true, "", "player distance carSave1 <= 5"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Store Vehicle", "core\client\vehicleSave.sqf", [], 1, false, true, "", "player distance carSave2 <= 5"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Retrieve Vehicle", "core\client\vehicleRetrieve.sqf", [ccarspawn1, carSave2], 1, false, true, "", "player distance carSave2 <= 5"];
actionList set [count actionList, _tempAction];
//======================================== Donate shop===================================================
_num15 = (donatebuy1 call INV_getshopnum);
_tempAction = _role addaction ["Donator Shop","core\client\shopdialogs.sqf",[_num15],1,false,true,"","player distance donatebuy1 <= 5"];
actionList set [count actionList, _tempAction];