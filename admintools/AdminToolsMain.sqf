_pathtotools = "admintools\tools\";
_pathtoskins = "admintools\skins\";
_pathtoweapon = "admintools\weaponkits\";
_pathtoshields = "admintools\shields\";
_pathtovehicles = "admintools\vehicles\";
_EXECscript1 = 'player execVM "'+_pathtotools+'%1"';
_EXECscript2 = 'player execVM "'+_pathtoskins+'%1"';
_EXECscript3 = 'player execVM "'+_pathtoweapon+'%1"';
_EXECscript4 = 'player execVM "'+_pathtoshields+'%1"';
_EXECscript5 = 'player execVM "'+_pathtovehicles+'%1"';

adminmenu = [["",true]];
//TODO: Configure Admin?
//Use set, I hate the same variable being redefined numerous times
adminmenu set [count adminmenu, ["Tools Menu", [3], "#USER:ToolsMenu", -5, [["expression", ""]], "1", "1"]];
adminmenu set [count adminmenu, ["Weapon Kits", [5], "#USER:WeaponMenu", -5, [["expression", ""]], "1", "1"]];
adminmenu set [count adminmenu, ["Vehicle Menu", [7], "#USER:VehicleMenu", -5, [["expression", ""]], "1", "1"]];
adminmenu set [count adminmenu, ["", [-1], "", -5, [["expression", ""]], "1", "0"]];
adminmenu set [count adminmenu, ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]];

//customise to fit
ModToolsMenu = [  ["",true],
		            ["Teleport", [2],  "", -5, [["expression", format[_EXECscript1,"teleport.sqf"]]], "1", "1"],
                  ["Heal Player(s)", [5],  "", -5, [["expression", format[_EXECscript1,"healp.sqf"]]], "1", "1"],
                  ["Look-N-Repair", [6],  "", -5, [["expression", format[_EXECscript1,"looknrepair.sqf"]]], "1", "1"],
                  ["Repair Buildings", [7],  "", -5, [["expression", format[_EXECscript1,"fixbuildings.sqf"]]], "1", "1"],
                  ["Spectate Player", [8],  "", -5, [["expression", format[_EXECscript1,"spectate.sqf"]]], "1", "1"],
		            ["Teleport To Me", [9], "", -5, [["expression", format[_EXECscript1, "TPtoME.sqf"]]], "1", "1"],
		            ["", [-1], "", -5, [["expression", ""]], "1", "0"],
                  ["Next page", [12], "#USER:ToolsMenu2", -5, [["expression", ""]], "1", "1"],
                  ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
               ];
               
//customise to fit
AdminToolsMenu =  [  ["",true],
                     ["Teleport", [2],  "", -5, [["expression", format[_EXECscript1,"teleport.sqf"]]], "1", "1"],		
                     ["Car God", [4],  "", -5, [["expression", format[_EXECscript1,"cargod.sqf"]]], "1", "1"],
                     ["Heal Player(s)", [5],  "", -5, [["expression", format[_EXECscript1,"healp.sqf"]]], "1", "1"],
                     ["Look-N-Repair", [6],  "", -5, [["expression", format[_EXECscript1,"looknrepair.sqf"]]], "1", "1"],
                     ["Repair Buildings", [7],  "", -5, [["expression", format[_EXECscript1,"fixbuildings.sqf"]]], "1", "1"],
                     ["Spectate Player", [8],  "", -5, [["expression", format[_EXECscript1,"spectate.sqf"]]], "1", "1"],
                     ["Teleport To Me", [9], "", -5, [["expression", format[_EXECscript1, "TPtoME.sqf"]]], "1", "1"],
                     ["", [-1], "", -5, [["expression", ""]], "1", "0"],
                     ["Next page", [12], "#USER:ToolsMenu2", -5, [["expression", ""]], "1", "1"],
                     ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
                  ];
                  
ToolsMenu = [  ["",true],
               ["Teleport", [2],  "", -5, [["expression", format[_EXECscript1,"dayzesp.sqf"]]], "1", "1"],
               ["God Mode(relog to disable bugs ui)", [3],  "", -5, [["expression", format[_EXECscript1,"Godmode.sqf"]]], "1", "1"],
               ["Car God", [4],  "", -5, [["expression", format[_EXECscript1,"cargod.sqf"]]], "1", "1"],
               ["Heal Player(s)", [5],  "", -5, [["expression", format[_EXECscript1,"healp.sqf"]]], "1", "1"],
               ["Look-N-Repair", [6],  "", -5, [["expression", format[_EXECscript1,"looknrepair.sqf"]]], "1", "1"],
               ["Repair Buildings", [7],  "", -5, [["expression", format[_EXECscript1,"fixbuildings.sqf"]]], "1", "1"],
               ["Spectate Player", [8],  "", -5, [["expression", format[_EXECscript1,"spectate.sqf"]]], "1", "1"],
               ["Teleport To Me", [9], "", -5, [["expression", format[_EXECscript1, "TPtoME.sqf"]]], "1", "1"],
               ["", [-1], "", -5, [["expression", ""]], "1", "0"],
               ["Next page", [12], "#USER:ToolsMenu2", -5, [["expression", ""]], "1", "1"],
               ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
            ];
            
ToolsMenu2 =[  ["",true],
               ["Flip Vehicle", [2],  "", -5, [["expression", format[_EXECscript1,"flipvehicle.sqf"]]], "1", "1"],
               ["Add Money", [3],  "", -5, [["expression", format[_EXECscript1,"addmoney.sqf"]]], "1", "1"],
               ["Comp All Players", [4],  "", -5, [["expression", format[_EXECscript1,"comp.sqf"]]], "1", "1"],
               ["Kick", [5],  "", -5, [["expression", format[_EXECscript1,"kick.sqf"]]], "1", "1"],
               ["Remove closeby vehicles", [6],  "", -5, [["expression", format[_EXECscript1,"vi.sqf"]]], "1", "1"],
               ["Skip Time", [7],  "", -5, [["expression", format[_EXECscript1,"9am.sqf"]]], "1", "1"],
               ["Pimp My Ride", [8],  "", -5, [["expression", format[_EXECscript1,"pimpmyride.sqf"]]], "1", "1"],
               ["Clean Server", [9],  "", -5, [["expression", format[_EXECscript1,"clear_server.sqf"]]], "1", "1"],
               ["", [-1], "", -5, [["expression", ""]], "1", "0"],
               ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
            ];
               
SkinsMenu = [  ["",true],
               ["Hero", [2],  "", -5, [["expression", format[_EXECscript2,"Hero.sqf"]]], "1", "1"],
               ["Camo", [3],  "", -5, [["expression", format[_EXECscript2,"Camo.sqf"]]], "1", "1"],
               ["Ghillie", [4],  "", -5, [["expression", format[_EXECscript2,"Ghille.sqf"]]], "1", "1"],
               ["Suvivor", [5],  "", -5, [["expression", format[_EXECscript2,"Male.sqf"]]], "1", "1"],
               ["Soldier", [6],  "", -5, [["expression", format[_EXECscript2,"Soldier.sqf"]]], "1", "1"],
               ["invisible", [7],  "", -5, [["expression", format[_EXECscript2,"invisible.sqf"]]], "1", "1"],
               ["", [-1], "", -5, [["expression", ""]], "1", "0"],
               ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
            ];

WeaponMenu =[  ["",true],
               ["No Weapons", [2],  "", -5, [["expression", format[_EXECscript3,"items.sqf"]]], "1", "1"],
               ["M4 AIM", [3],  "", -5, [["expression", format[_EXECscript3,"itemz.sqf"]]], "1", "1"],
               ["M4 CCO SD", [4],  "", -5, [["expression", format[_EXECscript3,"itemz2.sqf"]]], "1", "1"],
               ["mp5pdw", [5],  "", -5, [["expression", format[_EXECscript3,"itemz3.sqf"]]], "1", "1"],
               ["tar 21", [6],  "", -5, [["expression", format[_EXECscript3,"itemz4.sqf"]]], "1", "1"],
               ["M4 RIS cmags", [7],  "", -5, [["expression", format[_EXECscript3,"itemz5.sqf"]]], "1", "1"],
               ["Pecheneg 50 cal", [8],  "", -5, [["expression", format[_EXECscript3,"itemz6.sqf"]]], "1", "1"],
               ["Mk 48", [9],  "", -5, [["expression", format[_EXECscript3,"item7.sqf"]]], "1", "1"],
               ["HK417 Sniper SD", [10],  "", -5, [["expression", format[_EXECscript3,"item8.sqf"]]], "1", "1"],
               ["", [-1], "", -5, [["expression", ""]], "1", "0"],
               ["Next page", [12], "#USER:WeaponMenu2", -5, [["expression", ""]], "1", "1"],
               ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
            ];
            
WeaponMenu2 =  [  ["",true],
                  ["Kimber 1911", [2],  "", -5, [["expression", format[_EXECscript3,"item9.sqf"]]], "1", "1"],
                  ["Glock 18", [3],  "", -5, [["expression", format[_EXECscript3,"item10.sqf"]]], "1", "1"],
                  ["1911 SD", [4],  "", -5, [["expression", format[_EXECscript3,"item11.sqf"]]], "1", "1"],
                  ["USP Match", [5],  "", -5, [["expression", format[_EXECscript3,"item12.sqf"]]], "1", "1"],
                  ["M14 Aim", [6],  "", -5, [["expression", format[_EXECscript3,"item13.sqf"]]], "1", "1"],
                  ["M21", [7],  "", -5, [["expression", format[_EXECscript3,"bp2.sqf"]]], "1", "1"],
                  ["G53", [8],  "", -5, [["expression", format[_EXECscript3,"g53.sqf"]]], "1", "1"],
                  ["", [-1], "", -5, [["expression", ""]], "1", "0"],
                  ["Next page", [12], "#USER:WeaponMenu3", -5, [["expression", ""]], "1", "1"],
                  ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
               ];
               
//extra menu for custom kits remove "//" from lines below to use
WeaponMenu3 =  [  ["",true],
                  ["AS Val", [2],  "", -5, [["expression", format[_EXECscript3,"asval.sqf"]]], "1", "1"],
                  ["MAAWS", [3],  "", -5, [["expression", format[_EXECscript3,"maaws.sqf"]]], "1", "1"],
                  ["Stinger", [4],  "", -5, [["expression", format[_EXECscript3,"stinger.sqf"]]], "1", "1"],
                  ["HK416_Aim", [5],  "", -5, [["expression", format[_EXECscript3,"416aim.sqf"]]], "1", "1"],
                  ["MP5K", [6],  "", -5, [["expression", format[_EXECscript3,"mp5k.sqf"]]], "1", "1"],
                  ["AK shield", [7],  "", -5, [["expression", format[_EXECscript3,"akshield.sqf"]]], "1", "1"],
                  ["Stun Gun", [8],  "", -5, [["expression", format[_EXECscript3,"stungun.sqf"]]], "1", "1"],
                  ["556 C-mags", [9],  "", -5, [["expression", format[_EXECscript3,"cmags.sqf"]]], "1", "1"],
                  ["Delete gear", [10],  "", -5, [["expression", format[_EXECscript3,"cleanme.sqf"]]], "1", "1"],
                  ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
               ];

ShieldMenu =[  ["",true],
               ["Zombie Shield", [2],  "", -5, [["expression", format[_EXECscript4,"zombieshield.sqf"]]], "1", "1"],
               ["", [-1], "", -5, [["expression", ""]], "1", "0"],
               ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
            ];
            
VehicleMenu =  [  ["",true],
                  ["Camo Truck", [2],  "", -5, [["expression", format[_EXECscript5,"A10.sqf"]]], "1", "1"],
                  ["440 cuda", [3],  "", -5, [["expression", format[_EXECscript5,"AH64.sqf"]]], "1", "1"],
                  ["roadrunner2", [4],  "", -5, [["expression", format[_EXECscript5,"an2_prop.sqf"]]], "1", "1"],
                  ["hemi cuda", [5],  "", -5, [["expression", format[_EXECscript5,"APACHE.sqf"]]], "1", "1"],
                  ["taurus", [6],  "", -5, [["expression", format[_EXECscript5,"MTVRf.sqf"]]], "1", "1"],
                  ["Armored Limmo", [7],  "", -5, [["expression", format[_EXECscript5,"MTVR.sqf"]]], "1", "1"],
                  ["ATV", [8],  "", -5, [["expression", format[_EXECscript5,"ATV.sqf"]]], "1", "1"],
                  ["Bike", [9],  "", -5, [["expression", format[_EXECscript5,"Bike.sqf"]]], "1", "1"],
                  ["", [-1], "", -5, [["expression", ""]], "1", "0"],
                  ["Next page", [12], "#USER:VehicleMenu2", -5, [["expression", ""]], "1", "1"],
                  ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
               ];
               
VehicleMenu2 = [  ["",true],
                  ["GTO", [2],  "", -5, [["expression", format[_EXECscript5,"bus.sqf"]]], "1", "1"],
                  ["Sheriff Taurus", [3],  "", -5, [["expression", format[_EXECscript5,"C130.sqf"]]], "1", "1"],
                  ["news chopper", [4],  "", -5, [["expression", format[_EXECscript5,"chinook.sqf"]]], "1", "1"],
                  ["cop huey", [5],  "", -5, [["expression", format[_EXECscript5,"F35.sqf"]]], "1", "1"],
                  ["Gazelle", [6],  "", -5, [["expression", format[_EXECscript5,"FISH.sqf"]]], "1", "1"],
                  ["armed lil bird", [7],  "", -5, [["expression", format[_EXECscript5,"FISH2.sqf"]]], "1", "1"],
                  ["black caddy", [8],  "", -5, [["expression", format[_EXECscript5,"FISH3.sqf"]]], "1", "1"],
                  ["CHEVROLET_CAMARO_SS_396", [9],  "", -5, [["expression", format[_EXECscript5,"Gaz.sqf"]]], "1", "1"],
                  ["", [-1], "", -5, [["expression", ""]], "1", "0"],
                  ["Next page", [12], "#USER:VehicleMenu3", -5, [["expression", ""]], "1", "1"],
                  ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
               ];
               
VehicleMenu3 = [  ["",true],
                  ["Hatchback", [2],  "", -5, [["expression", format[_EXECscript5,"Hatchback.sqf"]]], "1", "1"],
                  ["HMMV fors", [3],  "", -5, [["expression", format[_EXECscript5,"HMMV.sqf"]]], "1", "1"],
                  ["HMMV des", [4],  "", -5, [["expression", format[_EXECscript5,"HMMV_Fallu.sqf"]]], "1", "1"],
                  ["KA60 Namal", [5],  "", -5, [["expression", format[_EXECscript5,"KA60_namalsk.sqf"]]], "1", "1"],
                  ["Red Lada", [6],  "", -5, [["expression", format[_EXECscript5,"ladared.sqf"]]], "1", "1"],
                  ["White Lada", [7],  "", -5, [["expression", format[_EXECscript5,"Ladawhite.sqf"]]], "1", "1"],
                  ["Little Bird", [8],  "", -5, [["expression", format[_EXECscript5,"littleBird.sqf"]]], "1", "1"],
                  ["MI17", [9],  "", -5, [["expression", format[_EXECscript5,"MI17civ.sqf"]]], "1", "1"],
                  ["", [-1], "", -5, [["expression", ""]], "1", "0"],
                  ["Next page", [12], "#USER:VehicleMenu4", -5, [["expression", ""]], "1", "1"],
                  ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
               ];
               
VehicleMenu4 = [  ["",true],
                  ["MI24", [2],  "", -5, [["expression", format[_EXECscript5,"MI24.sqf"]]], "1", "1"],
                  ["Mill Offroad", [3],  "", -5, [["expression", format[_EXECscript5,"militrayOffroad.sqf"]]], "1", "1"],
                  ["UH60", [4],  "", -5, [["expression", format[_EXECscript5,"UH60.sqf"]]], "1", "1"],
                  ["VW Golf", [5],  "", -5, [["expression", format[_EXECscript5,"miniHB.sqf"]]], "1", "1"],
                  ["Moto", [6],  "", -5, [["expression", format[_EXECscript5,"Moto.sqf"]]], "1", "1"],
                  ["Moto 2", [7],  "", -5, [["expression", format[_EXECscript5,"Moto2.sqf"]]], "1", "1"],
                  ["Moto 3", [8],  "", -5, [["expression", format[_EXECscript5,"Moto3.sqf"]]], "1", "1"],
                  ["Moto 4", [9],  "", -5, [["expression", format[_EXECscript5,"Moto4.sqf"]]], "1", "1"],
                  ["", [-1], "", -5, [["expression", ""]], "1", "0"],
                  ["Next page", [12], "#USER:VehicleMenu5", -5, [["expression", ""]], "1", "1"],
                  ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
               ];
               
VehicleMenu5 = [  ["",true],
                  ["MV22", [2],  "", -5, [["expression", format[_EXECscript5,"MV22.sqf"]]], "1", "1"],
                  ["Offroad", [3],  "", -5, [["expression", format[_EXECscript5,"Offroad.sqf"]]], "1", "1"],
                  ["Offroad 2", [4],  "", -5, [["expression", format[_EXECscript5,"OFFROAD_d.sqf"]]], "1", "1"],
                  ["Offroad 3", [5],  "", -5, [["expression", format[_EXECscript5,"OFFROAD_w"]]], "1", "1"],
                  ["Red Offroad", [6],  "", -5, [["expression", format[_EXECscript5,"offroadRed.sqf"]]], "1", "1"],
                  ["Offroad Saffari", [7],  "", -5, [["expression", format[_EXECscript5,"offroadSaffari.sqf"]]], "1", "1"],
                  ["Offroad Tan", [8],  "", -5, [["expression", format[_EXECscript5,"offroadTan.sqf"]]], "1", "1"],
                  ["PBX", [9],  "", -5, [["expression", format[_EXECscript5,"PBX.sqf"]]], "1", "1"],
                  ["", [-1], "", -5, [["expression", ""]], "1", "0"],
                  ["Next page", [12], "#USER:VehicleMenu6", -5, [["expression", ""]], "1", "1"],
                  ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
               ];
               
VehicleMenu6 = [  ["",true],
                  ["Sedan", [2],  "", -5, [["expression", format[_EXECscript5,"sedan.sqf"]]], "1", "1"],
                  ["SUV", [3],  "", -5, [["expression", format[_EXECscript5,"SUV.sqf"]]], "1", "1"],
                  ["MH6J", [4],  "", -5, [["expression", format[_EXECscript5,"MH6J.sqf"]]], "1", "1"],
                  ["Tank", [5],  "", -5, [["expression", format[_EXECscript5,"tank.sqf"]]], "1", "1"],
                  ["Tank Fallu", [6],  "", -5, [["expression", format[_EXECscript5,"TANKfall.sqf"]]], "1", "1"],
                  ["Tank Namal", [7],  "", -5, [["expression", format[_EXECscript5,"TANKnam.sqf"]]], "1", "1"],
                  ["Taxi", [8],  "", -5, [["expression", format[_EXECscript5,"taxi.sqf"]]], "1", "1"],
                  ["Tour Car", [9],  "", -5, [["expression", format[_EXECscript5,"tourcar.sqf"]]], "1", "1"],
                  ["", [-1], "", -5, [["expression", ""]], "1", "0"],
                  ["Next page", [12], "#USER:VehicleMenu7", -5, [["expression", ""]], "1", "1"],
                  ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
               ];
               
VehicleMenu7 = [  ["",true],
                  ["SU25", [2],  "", -5, [["expression", format[_EXECscript5,"SU25.sqf"]]], "1", "1"],
                  ["Tractor 2", [3],  "", -5, [["expression", format[_EXECscript5,"Tractor.sqf"]]], "1", "1"],
                  ["Pickup Tubeframe", [4],  "", -5, [["expression", format[_EXECscript5,"tubeframe.sqf"]]], "1", "1"],
                  ["UAZ", [5],  "", -5, [["expression", format[_EXECscript5,"UAZ.sqf"]]], "1", "1"],
                  ["L39", [6],  "", -5, [["expression", format[_EXECscript5,"ALFA_ROMEO_BRERA.sqf"]]], "1", "1"],
                  ["UH1H camo", [7],  "", -5, [["expression", format[_EXECscript5,"Tumbler.sqf"]]], "1", "1"],
                  ["UH1", [8],  "", -5, [["expression", format[_EXECscript5,"pook_UGV_SWORD_M249GL_GUE.sqf"]]], "1", "1"],
                  ["Ural", [9],  "", -5, [["expression", format[_EXECscript5,"pook_UGV_SWORD_M240.sqf"]]], "1", "1"],
                  ["", [-1], "", -5, [["expression", ""]], "1", "0"],
                  ["Next page", [12], "#USER:VehicleMenu8", -5, [["expression", ""]], "1", "1"],
                  ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
               ];
               
VehicleMenu8 = [  ["",true],		
                  ["V3S", [2],  "", -5, [["expression", format[_EXECscript5,"V3S.sqf"]]], "1", "1"],
                  ["Van 2", [3],  "", -5, [["expression", format[_EXECscript5,"Van.sqf"]]], "1", "1"],
                  ["F35", [4],  "", -5, [["expression", format[_EXECscript5,"F35.sqf"]]], "1", "1"],
                  ["Range Rover", [4],  "", -5, [["expression", format[_EXECscript5,"Range_Rover.sqf"]]], "1", "1"],
                  ["", [-1], "", -5, [["expression", ""]], "1", "0"],
                  ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
               ];
               
showCommandingMenu "#USER:adminmenu";