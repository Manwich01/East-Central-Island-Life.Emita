_role = player;
_tempAction = 0;

_tempAction = _role addaction ["Furniture FAQ","furniturehelp.sqf",[1],1,false,true,"","player distance workplace_getjobflag_5 <= 5"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["How To Play Paintball","pbhelp.sqf",[1],1,false,true,"","player distance paintballbox <= 30"];
actionList set [count actionList, _tempAction];
//========================   HOSTAGE  ================================================
_tempAction = _role addaction ["Take Hostage Mission","core\global\hostage.sqf",["getajob_hostage"],1,false,true,"","player distance hostage <= 3 and isciv"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Take Hostage", "core\global\noscript.sqf", "[hostage1] join (group player); player groupchat ""Keep the hostage close or you will fail!"";",1,false,true,"","player distance hostage1 < 5"];
actionList set [count actionList, _tempAction];
//==================================== GANG MENU ======================================================
_tempAction = _role addaction ["Gang Menu","core\client\maindialogs.sqf",["gangmenu"],1,false,true,"","player distance rathaus <= 3 and isciv"];
actionList set [count actionList, _tempAction];
//====================================== BANK ROB =====================================================
_tempAction = _role addaction ["Steal from safe 1","core\client\bankrob.sqf", ["ausrauben", safe1, "safe1"],1,false,true,"","Safecracked1 and isciv and player distance Safe1 <= 2"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Crack Safe", "core\client\crackSafe.sqf",["safe1"],1,false,True,"","not SafeCracked1 and isciv and player distance Safe1 <= 2"];
actionList set [count actionList, _tempAction];
//=======================   ADMIN CAMERA ==============================================
_tempAction = _role addaction ["Admin Spectate","core\client\tcgcode.sqf",[1],1,false,true,"","player distance rubblepile <= 3"];
actionList set [count actionList, _tempAction];
//===================================== ASSASSINATION =================================================
_tempAction = _role addaction ["Get Assassination job","core\global\assassination.sqf",["getajob_assassin"],1,false,true,"","player distance assassin <= 3 and isciv"];
actionList set [count actionList, _tempAction];
//========================================= HUNTING ===================================================
_tempAction = _role addaction ["Take boar meat","core\global\noscript.sqf",'_no = ceil(random 7);if (((call INV_GetOwnWeight) + ("boar" call INV_getitemTypeKg)*_no) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};(nearestobjects [getpos player, ["wildboar"],  3] select 0) setvariable ["inuse", 1, true]; player playmove "AinvPknlMstpSlayWrflDnon_medic";sleep 4;waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};deletevehicle (nearestobjects [getpos player, ["wildboar"],  3] select 0);["boar", _no] call INV_AddInvItem;player groupchat format["you got %1 boar meat", _no];',1,true,true,"",'_w = (nearestobjects [getpos player, ["wildboar"],  3] select 0) getvariable "inuse"; isnil "_w" and player distance (nearestobjects [getpos player, ["wildboar"],  3] select 0) < 5 and !alive (nearestobjects [getpos player, ["wildboar"],  3] select 0) and isciv'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Take cow meat","core\global\noscript.sqf",'_no = ceil(random 2);if (((call INV_GetOwnWeight) + ("rawcow" call INV_getitemTypeKg)*_no) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};(nearestobjects [getpos player, ["cow01"],  3] select 0) setvariable ["inuse", 1, true]; player playmove "AinvPknlMstpSlayWrflDnon_medic";sleep 4;waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};deletevehicle (nearestobjects [getpos player, ["cow01"],  3] select 0);["rawcow", _no] call INV_AddInvItem;player groupchat format["you got %1 raw cow meat", _no];',1,true,true,"",'_w = (nearestobjects [getpos player, ["cow01"],  3] select 0) getvariable "inuse"; isnil "_w" and player distance (nearestobjects [getpos player, ["cow01"],  3] select 0) < 5 and !alive (nearestobjects [getpos player, ["cow01"],  3] select 0) and isciv'];
actionList set [count actionList, _tempAction];
//===================================== TARGET RESET ==================================================
_tempAction = _role addaction ["Reset Targets","core\global\noscript.sqf",'{_x animate["terc",0]} foreach (nearestobjects [getpos player, ["TargetEpopup"],  500])',1,true,true,"",'player distance targetrange1 < 10'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Reset targets","core\global\noscript.sqf",'{_x animate["terc",0]} foreach (nearestobjects [getpos player, ["TargetEpopup"],  500])',1,true,true,"",'player distance targetrange2 < 10'];
actionList set [count actionList, _tempAction];
//===================================== IMPOUND AREA==================================================
_tempAction = _role addaction ["Impound Lot","core\client\maindialogs.sqf",["impound"],1,false,true,"","player distance impoundbuy <= 5"];
actionList set [count actionList, _tempAction];
//==================================== OBJECT ACTIONS =================================================
_tempAction = _role addaction ["Up Elevator","elevator.sqf",[1],1,false,true,"",'player distance getmarkerpos "elevator1" <= 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Down Elevator","elevator.sqf",[2],1,false,true,"",'player distance elevator2 <= 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Bench","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("Land_Bench_EP1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};
actionList set [count actionList, _tempAction];
etevehicle (nearestobjects [getpos player, ["Land_Bench_EP1"],  3] select 0);["Land_Bench_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a washing machine";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_Bench_EP1"],  3] select 0) < 1.25'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Take Scuba Gear","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("gnt_scubaw" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["gnt_scubaw"],  10] select 0);["gnt_scubaw", 1] call INV_AddInvItem;player groupchat "you picked up scuba gear";',1,true,true,"",'player distance (nearestobjects [getpos player, ["gnt_scubaw"],  10] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Cabinet","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("Land_Cabinet_EP1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_Cabinet_EP1"],  3] select 0);["Land_Cabinet_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a Cabinet";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_Cabinet_EP1"],  3] select 0) < 1.25'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Carpet","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("Land_Carpet_EP1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_Carpet_EP1"],  3] select 0);["Land_Carpet_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a Carpet";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_Carpet_EP1"],  3] select 0) < 1.25'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Chest","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("Land_Chest_EP1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_Chest_EP1"],  3] select 0);["Land_Chest_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a Chest";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_Chest_EP1"],  3] select 0) < 1.25'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Small Tbl","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("Land_stand_small_EP1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_stand_small_EP1"],  3] select 0);["Land_stand_small_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a Small Tbl";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_stand_small_EP1"],  3] select 0) < 1.25'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Table","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("Land_Table_EP1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_Table_EP1"],  3] select 0);["Land_Table_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a Table";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_Table_EP1"],  3] select 0) < 1.25'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Road Cone","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("roadcone" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_coneLight"],  3] select 0);["roadcone", 1] call INV_AddInvItem;player groupchat "you picked up a road cone";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_coneLight"],  3] select 0) < 5'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove TV","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("SmallTV" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["SmallTV"],  3] select 0);["SmallTV", 1] call INV_AddInvItem;player groupchat "you picked up a barracade";',1,true,true,"",'player distance (nearestobjects [getpos player, ["SmallTV"],  3] select 0) < 1.25'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Open/close gate","core\global\noscript.sqf",'_gate = (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0); if(_gate animationPhase "bargate" == 1)then{_gate animate ["bargate", 0]}else{_gate animate ["bargate", 1]};',1,true,true,"",'player distance (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0) < 7 and isciv'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Folding Table","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("FoldTable" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["FoldTable"],  3] select 0);["FoldTable", 1] call INV_AddInvItem;player groupchat "you picked up a barracade";',1,true,true,"",'player distance (nearestobjects [getpos player, ["FoldTable"],  3] select 0) < 1.25'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Small Table","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("SmallTable" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["SmallTable"],  3] select 0);["SmallTable", 1] call INV_AddInvItem;player groupchat "you picked up a barracade";',1,true,true,"",'player distance (nearestobjects [getpos player, ["SmallTable"],  3] select 0) < 1.25'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Window Barracade","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("Fence_corrugated_plate" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Fence_corrugated_plate"],  3] select 0);["Fence_corrugated_plate", 1] call INV_AddInvItem;player groupchat "you picked up a barracade";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Fence_corrugated_plate"],  3] select 0) < 1'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Folding Chair","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("FoldChair" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["FoldChair"],  3] select 0);["FoldChair", 1] call INV_AddInvItem;player groupchat "you picked up a folding chair";',1,true,true,"",'player distance (nearestobjects [getpos player, ["FoldChair"],  3] select 0) < 1.25'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Chair","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("Land_Chair_EP1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_Chair_EP1"],  3] select 0);["Land_Chair_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a chair";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_Chair_EP1"],  3] select 0) < 1.25'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Garbage Can","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("Garbage_can" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Garbage_can"],  3] select 0);["Garbage_can", 1] call INV_AddInvItem;player groupchat "you picked up a garbage can";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Garbage_can"],  3] select 0) < 1.25'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Remove Washing Machine","core\global\noscript.sqf",'if (((call INV_GetOwnWeight) + ("MAP_washing_machine" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_washing_machine"],  3] select 0);["MAP_washing_machine", 1] call INV_AddInvItem;player groupchat "you picked up a washing machine";',1,true,true,"",'player distance (nearestobjects [getpos player, ["MAP_washing_machine"],  3] select 0) < 1.25'];
actionList set [count actionList, _tempAction];
//==================================== MAYOR ELECTION =================================================
_tempAction = _role addaction ["Elect a Governor","core\client\maindialogs.sqf",["wahlen"],1,false,true,"","player distance rathaus <= 3"];
actionList set [count actionList, _tempAction];
//===================================== MAYOR ACTIONS =================================================
_tempAction = _role addaction ["Change the Law","core\client\maindialogs.sqf",["gesetz"],1,false,true,"","player distance rathaus <= 3 and isMayor"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Change taxes","core\client\maindialogs.sqf",["steuern"],1,false,true,"","player distance rathaus <= 3 and isMayor"];
actionList set [count actionList, _tempAction];
//===================================== CONVOY CASH ===================================================
_tempAction = _role addaction ["Rob Bank Truck","core\global\noscript.sqf",'convoyhascash=false; publicvariable "convoyhascash"; _cash = (playersNumber west)*20000; ["geld", _cash] call INV_AddInvItem; player groupchat format["You stole $%1!", _cash];',1,false,true,"","_driver = driver convoytruck; player distance convoytruck <= 7 and convoyhascash and isciv and (!alive _driver or isnull _driver) and (call INV_isArmed)"];
actionList set [count actionList, _tempAction];
//===================================== BUY INSURANCE ===================================================
//_tempAction = _role addaction [format["Buy Bank Insurance ($%1)", ("bankversicherung" call INV_getitemBuyCost)],"core\global\noscript.sqf",'if("geld" call INV_GetItemAmount < ("bankversicherung" call INV_getitemBuyCost))exitwith{player groupchat "not enough money"};["geld", -("bankversicherung" call INV_getitemBuyCost)] call INV_AddInvItem;["bankversicherung", 1] call INV_AddInvItem;player groupchat format["you bought bank insurance for $%1", ("bankversicherung" call INV_getitemBuyCost)];',1,false,true,"","player distance dmv <= 3"];
//actionList set [count actionList, _tempAction];
//======================================= CRIMELOG ====================================================
_tempAction = _role addaction ["Crime Log","core\client\maindialogs.sqf",["coplog"],1,false,true,"","player distance rathaus <= 3"];
actionList set [count actionList, _tempAction];
//======================================== SLAVES =====================================================
//_tempAction = _role addaction [format ["Buy Slave ($%1)", slave_cost],"core\client\slaves.sqf", ["slave"],1,false,true,"","player distance boatshop3 <= 5 and isciv"];
//actionList set [count actionList, _tempAction];
//==================================== PRIVATE STORAGE ================================================
//_tempAction = _role addaction ["Private storage (saved)","core\client\storage.sqf",["private_storage", "save"],1,false,true,"","player distance storage < 7"];
//actionList set [count actionList, _tempAction];
//========================================= BAIL ======================================================	 
_tempAction = _role addaction [format ["Pay Bail", slave_cost],"core\client\maindialogs.sqf", ["bail"],1,false,true,"","player distance bailflag <= 3 and isciv"];
actionList set [count actionList, _tempAction];
//===================================== ITEM PROCESS ==================================================	 
_tempAction = _role addaction ["Process Diamond","core\client\itemprocess.sqf",["diamond rock", "diamond", 5, ""],1,false,true,"","player distance diamond_1 <= 5 and isciv"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Process Meth","core\client\itemprocess1.sqf",["pharm", "meth", 2, ""],1,false,true,"","player distance methlab <= 5 and isciv"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Process Oil","core\client\itemprocess.sqf",["Oil", "OilBarrel", 2, "oil"],1,false,true,"","player distance Oil_1 <= 5 and isciv"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Process Wheat","core\client\itemprocess.sqf",["getreide", "Bread", 2, "Baker"],1,false,true,"","player distance bakery <= 5 and isciv"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Process Strawberries","core\client\itemprocess.sqf",["straw", "Frozens", 3, "Baker"],1,false,true,"","player distance bakery <= 5 and isciv"];
actionList set [count actionList, _tempAction];
//ga1
_tempAction = _role addaction ["Process LSD","core\client\itemprocess.sqf",["Unprocessed_LSD", "lsd", 5, "lsd ga1"],1,false,true,"","_control = gangarea1 getvariable ""control"";!isnil ""_control"" and player distance gangarea1 <= 5 and (_control == (call INV_mygang))"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Process Cocaine","core\client\itemprocess.sqf",["Unprocessed_Cocaine", "cocaine", 5, "cocaine ga1"],1,false,true,"","_control = gangarea1 getvariable ""control"";!isnil ""_control"" and player distance gangarea1 <= 5 and (_control == (call INV_mygang))"];
actionList set [count actionList, _tempAction];
//ga2
_tempAction = _role addaction ["Process LSD","core\client\itemprocess.sqf",["Unprocessed_LSD", "lsd", 5, "lsd ga2"],1,false,true,"","_control = gangarea2 getvariable ""control"";!isnil ""_control"" and player distance gangarea2 <= 5 and (_control == (call INV_mygang))"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Process Heroin","core\client\itemprocess.sqf",["Unprocessed_Heroin", "heroin", 5, "heroin ga2"],1,false,true,"","_control = gangarea2 getvariable ""control"";!isnil ""_control"" and player distance gangarea2 <= 5 and (_control == (call INV_mygang))"];
actionList set [count actionList, _tempAction];
//ga3
_tempAction = _role addaction ["Process Heroin","core\client\itemprocess.sqf",["Unprocessed_Heroin", "heroin", 5, "heroin ga3"],1,false,true,"","_control = gangarea3 getvariable ""control"";!isnil ""_control"" and player distance gangarea3 <= 5 and (_control == (call INV_mygang))"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Process Marijuana","core\client\itemprocess.sqf",["Unprocessed_Marijuana", "marijuana", 5, "marijuana ga3"],1,false,true,"","_control = gangarea3 getvariable ""control"";!isnil ""_control"" and player distance gangarea3 <= 5 and (_control == (call INV_mygang))"];
actionList set [count actionList, _tempAction];
//ga4
_tempAction = _role addaction ["Process Heroin","core\client\itemprocess.sqf",["Unprocessed_Heroin", "heroin", 5, "heroin ga4"],1,false,true,"","_control = gangarea4 getvariable ""control"";!isnil ""_control"" and player distance gangarea4 <= 5 and (_control == (call INV_mygang))"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Process Marijuana","core\client\itemprocess.sqf",["Unprocessed_Marijuana", "marijuana", 5, "marijuana ga4"],1,false,true,"","_control = gangarea4 getvariable ""control"";!isnil ""_control"" and player distance gangarea4 <= 5 and (_control == (call INV_mygang))"];
actionList set [count actionList, _tempAction];
//======================================== WORKERS =====================================================
_tempAction = _role addaction [format ["Buy Hooker ($%1)", huren_cost],"core\client\worker1.sqf", ["holen"],1,false,true,"","(player distance brothela <= 2 or player distance brothel <= 2) and isciv"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction [format ["Buy K9 ($%1)", dog_cost],"core\client\copdog.sqf", ["buydog"],1,false,true,"","player distance dogspawn <= 5 and (player == cop1 or player == cop2)"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Get in Trailer","core\client\trucking.sqf",[4],1,true,true,"",'_vcl = (nearestobjects [getpos player, ["cl_mackr","cl_trucktest_mackr","cl_flatbed_mackr"], 5] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray'];
actionList set [count actionList, _tempAction];
//======================================= TAXI Missions ====================================================
//_tempAction = _role addaction ["Get courier job","core\client\delivery.sqf", ["getajob_delivery"],1,false,true,"","(player distance taxishop <= 5) and isciv"];
//actionList set [count actionList, _tempAction];
//_tempAction = _role addaction ["Cancel delivery mission","core\client\delivery.sqf", ["cancel"],1,false,true,"","(player distance taxishop <= 5) and isciv and alreadygotaworkplacejob == 1"];		
//actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Get taxi job","core\global\taxi.sqf", ["getajob_taxi"],1,false,true,"","player distance taxishop <= 5 and isciv"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Finish taxi mission","core\global\taxi.sqf", ["canceljob_taxi"],1,false,true,"","(player distance taxishop <= 5) and isciv and workplacejob_taxi_active"];	
actionList set [count actionList, _tempAction];
//====================================== VEHICLE ACTIONS ================================================
_tempAction = _role addaction ["Pull out","core\global\noscript.sqf",'(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0) execVM "core\client\pullout.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and count (crew _vcl) > 0 and _vcl in INV_ServerVclArray and (call INV_isArmed)'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction [localize "STRS_addAction_vehicleinfo","core\global\noscript.sqf",'(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0) execVM "core\client\vehinfo.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray'];
actionList set [count actionList, _tempAction];
//======================================== GANG FLAGS ===================================================
_tempAction = _role addaction ["Neutralise flag","core\client\gangflags.sqf",[gangarea1, "neutralise"],1,false,true,"",'_control = gangarea1 getvariable "control";player distance gangarea1 <= 6 and _control != (call INV_mygang) and gangmember and !pickingup'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Neutralise flag","core\client\gangflags.sqf",[gangarea2, "neutralise"],1,false,true,"",'_control = gangarea2 getvariable "control";player distance gangarea2 <= 6 and _control != (call INV_mygang) and gangmember and !pickingup'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Neutralise flag","core\client\gangflags.sqf",[gangarea3, "neutralise"],1,false,true,"",'_control = gangarea3 getvariable "control";player distance gangarea3 <= 6 and _control != (call INV_mygang) and gangmember and !pickingup'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Neutralise flag","core\client\gangflags.sqf",[gangarea4, "neutralise"],1,false,true,"",'_control = gangarea3 getvariable "control";player distance gangarea4 <= 6 and _control != (call INV_mygang) and gangmember and !pickingup'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Capture flag","core\client\gangflags.sqf",[gangarea4, "capture"],1,false,true,"",'player distance gangarea4 <= 6 and gangmember and !pickingup and getpos gangarea4 select 2 < 1'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Capture flag","core\client\gangflags.sqf",[gangarea1, "capture"],1,false,true,"",'player distance gangarea1 <= 6 and gangmember and !pickingup and getpos gangarea1 select 2 < 1'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Capture flag","core\client\gangflags.sqf",[gangarea2, "capture"],1,false,true,"",'player distance gangarea2 <= 6 and gangmember and !pickingup and getpos gangarea2 select 2 < 1'];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Capture flag","core\client\gangflags.sqf",[gangarea3, "capture"],1,false,true,"",'player distance gangarea3 <= 6 and gangmember and !pickingup and getpos gangarea3 select 2 < 1'];
actionList set [count actionList, _tempAction];
//======================================== SHOP EXPORT ==================================================
_num1 = (shop1 call INV_getshopnum);
_num2 = (shop2 call INV_getshopnum);
_num4 = (shop4 call INV_getshopnum);
_num5 = (bailflag call INV_getshopnum);
_tempAction = _role addaction ["Shop 1 export","core\client\shopdialogs.sqf",[_num1],1,false,true,"","player distance shop1export <= 3"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Shop 2 export","core\client\shopdialogs.sqf",[_num2],1,false,true,"","player distance shop2export <= 3"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Shop 3 export","core\client\shopdialogs.sqf",[_num4],1,false,true,"","player distance shop4export <= 3"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Food and Candy","core\client\shopdialogs.sqf",[_num5],1,false,true,"",'player distance (nearestobjects [getpos player, ["ibr_van_BNK"],  10] select 0) < 3'];
actionList set [count actionList, _tempAction];
//======================================= GANG GUNSHOPS ==================================================
_num11  = (gangarea1 call INV_getshopnum);
_num12  = (gangarea2 call INV_getshopnum);
_num13  = (gangarea3 call INV_getshopnum);
_num14  = (gangarea4 call INV_getshopnum);
_tempAction = _role addaction ["Gang Shop","core\client\shopdialogs.sqf",[_num11],1,false,true,"","_control = gangarea1 getvariable ""control"";!isnil ""_control"" and player distance gangarea1 <= 5 and (_control == (call INV_mygang))"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Gang Shop","core\client\shopdialogs.sqf",[_num12],1,false,true,"","_control = gangarea2 getvariable ""control"";!isnil ""_control"" and player distance gangarea2 <= 5 and (_control == (call INV_mygang))"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Gang Shop","core\client\shopdialogs.sqf",[_num13],1,false,true,"","_control = gangarea3 getvariable ""control"";!isnil ""_control"" and player distance gangarea3 <= 5 and (_control == (call INV_mygang))"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Gang Shop","core\client\shopdialogs.sqf",[_num14],1,false,true,"","_control = gangarea4 getvariable ""control"";!isnil ""_control"" and player distance gangarea4 <= 5 and (_control == (call INV_mygang))"];
actionList set [count actionList, _tempAction];
//===================================== Gas station Robbing===============================================
_tempAction = _role addaction ["Rob Gas Station","core\client\robthestations.sqf",["station 1"],1,false,true,"","isciv and station1money >= 5000 and player distance fuelshop1 <= 2"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Rob Gas Station","core\client\robthestations.sqf",["station 2"],1,false,true,"","isciv and station2money >= 5000 and player distance fuelshop2 <= 2"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Rob Gas Station","core\client\robthestations.sqf",["station 3"],1,false,true,"","isciv and station3money >= 5000 and player distance fuelshop3 <= 2"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Rob Gas Station","core\client\robthestations.sqf",["station 4"],1,false,true,"","isciv and station4money >= 5000 and player distance fuelshop4 <= 2"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Rob Gas Station","core\client\robthestations.sqf",["station 5"],1,false,true,"","isciv and station5money >= 5000 and player distance fuelshop5 <= 2"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Rob Gas Station","core\client\robthestations.sqf",["station 6"],1,false,true,"","isciv and station6money >= 5000 and player distance fuelshop6 <= 2"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Rob Gas Station","core\client\robthestations.sqf",["station 7"],1,false,true,"","isciv and station7money >= 5000 and player distance fuelshop7 <= 2"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Rob Gas Station","core\client\robthestations.sqf",["station 8"],1,false,true,"","isciv and station8money >= 5000 and player distance fuelshop8 <= 2"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Rob Pharmacy","core\client\robpharmacy.sqf",["pharmacy"],1,false,true,"","isciv and pharmmoney >= 5000 and player distance pharmacy <= 2"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Rob Bar","core\client\robbar.sqf",["bar"],1,false,true,"","isciv and barmoney >= 5000 and player distance pub1 <= 2"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Rob Bar","core\client\robbar.sqf",["bar1"],1,false,true,"","isciv and barmoney1 >= 5000 and player distance pub2 <= 2"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Rob Bar","core\client\robbar.sqf",["bar2"],1,false,true,"","isciv and barmoney2 >= 5000 and player distance pub3 <= 2"];
actionList set [count actionList, _tempAction];
_tempAction = _role addaction ["Rob Bar","core\client\robbar.sqf",["bar3"],1,false,true,"","isciv and barmoney3 >= 5000 and player distance pub4 <= 2"];
actionList set [count actionList, _tempAction];
//========================   unflip vehicle     ================================
_tempAction = _role addaction ["Unflip vehicle","core\client\unflipvehicle.sqf",["unflip"],1,false,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_VehicleArray'];
actionList set [count actionList, _tempAction];
//======================================== Donate shop===================================================
_num15 = (donatebuy1 call INV_getshopnum);
_tempAction = _role addaction ["Donator Shop","core\client\shopdialogs.sqf",[_num15],1,false,true,"","player distance donatebuy1 <= 5"];
actionList set [count actionList, _tempAction];