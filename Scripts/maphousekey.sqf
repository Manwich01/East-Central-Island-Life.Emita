//When you alter _MARKERS ensure you edit burgler.sqf

_house  = ((_this select 3) select 0);
_housename = ((_this select 3) select 1);
_uid = getPlayerUID vehicle player;

_unit = _this;
_dist = 10;
_marker = "";
{_range = ((getMarkerPos _x) distance (player));
if (_range < _dist) then 
{_dist = _range; _marker = _x};	
} foreach Homearray;

switch true do
{
case (_marker == "1059"):{if(_uid == "24638022") then {[_house, _housename] execVM "Scripts\maphouse.sqf";} else {player groupChat "This house is not owned by you";};}; //Viper
case (_marker == "1021"):{if(_uid == "129724358") then {[_house, _housename] execVM "Scripts\maphouse.sqf";} else {player groupChat "This house is not owned by you";};}; //Bell
case (_marker == "1072"):{if(_uid == "12033030") then {[_house, _housename] execVM "Scripts\maphouse.sqf";} else {player groupChat "This house is not owned by you";};}; //Large
case (_marker == "1035"):{if(_uid == "125887366") then {[_house, _housename] execVM "Scripts\maphouse.sqf";} else {player groupChat "This house is not owned by you";};}; //Morgan
/*case (_marker == "sample"):{if(_uid == "2592262") then {[_house,_housename] execVM "Scripts\maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "CMiller"):{if(_uid == "1754630") then {[_house,_housename] execVM "Scripts\maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "CMiller_1"):{if(_uid == "1754630") then {[_house,_housename] execVM "Scripts\maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Large"):{if(_uid == "12033030") then {[_house,_housename] execVM "Scripts\maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "DBell"):{if(_uid == "129724358") then {[_house,_housename] execVM "Scripts\maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "DBell_1"):{if(_uid == "129724358") then {[_house,_housename] execVM "Scripts\maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "DBell_2"):{if(_uid == "129724358") then {[_house,_housename] execVM "Scripts\maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "DBell_3"):{if(_uid == "129724358") then {[_house,_housename] execVM "Scripts\maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "DBell_4"):{if(_uid == "129724358") then {[_house,_housename] execVM "Scripts\maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "DBell_5"):{if(_uid == "129724358") then {[_house,_housename] execVM "Scripts\maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "D.Viper"):{if(_uid == "24638022") then {[_house,_housename] execVM "Scripts\maphouse.sqf";} else {player groupchat "This is not owned by you";};};
 "This is not owned by you";};}; */


//case (_marker == ""):{if(_uid == "") then {[_house,_housename] execVM "Scripts\maphouse.sqf";} else {player groupchat "This is not owned by you";};};
default {[_house,_housename] execVM "Scripts\maphouse.sqf";};
};

