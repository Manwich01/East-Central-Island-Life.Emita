// rob gas station script, called on client, the amount u steal is determined by a server loop, in stationrobloop.sqf
// written by eddie vedder
_selection = ((_this select 3) select 0);

if (_selection == "station 1") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Chevron";
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "A sensor alarm at the Chevron station has just gone off!";', _sel]) call broadcast;
	}; 
_sel = "Chevron";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station1money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed the %1 station!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station1money];
station1money = 0;
publicvariable "station1money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};

if (_selection == "station 2") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Qwik Stop";
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "A sensor alarm at the Qwik Stop has just gone off!";', _sel]) call broadcast;
	};
_sel = "Qwik Stop";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station2money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed the %1!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station2money];
station2money = 0;
publicvariable "station2money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};

if (_selection == "station 3") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "7-Eleven";
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "A sensor alarm at 7-Eleven has just gone off!";', _sel]) call broadcast;
	};
_sel = "7-Eleven";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station3money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed the %1!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station3money];
station3money = 0;
publicvariable "station3money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};

if (_selection == "station 4") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Stop N Shop";
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "A sensor alarm at the Stop N Shop has just gone off!";', _sel]) call broadcast;
	};
_sel = "Stop N Shop";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station4money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed the %1!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station4money];
station4money = 0;
publicvariable "station4money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};

if (_selection == "station 5") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Z-Mart";
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "A sensor alarm at the Z-Mart has just gone off!";', _sel]) call broadcast;
	};
_sel = "Z-Mart";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station5money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed the %1!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station5money];
station5money = 0;
publicvariable "station5money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};

if (_selection == "station 6") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Shell Station";
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "A sensor alarm at the Shell Station has just gone off!";', _sel]) call broadcast;
	};
_sel = "Shell Station";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station6money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed the %1!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station6money];
station6money = 0;
publicvariable "station6money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};

if (_selection == "station 7") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Exxon";
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "A sensor alarm at the Exxon Station has just gone off!";', _sel]) call broadcast;
	};
_sel = "Exxon";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station7money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed the %1 station!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station7money];
station7money = 0;
publicvariable "station7money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};

if (_selection == "station 8") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Save N' Go";
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "A sensor alarm at the Save N' Go has just gone off!";', _sel]) call broadcast;
	};
_sel = "Save N' Go";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station8money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed the %1!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station8money];
station8money = 0;
publicvariable "station8money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};

//if (_selection == "station 9") then
//{
//if (!(call INV_isArmed)) exitwith
	//{
	//_sel = "Save N Go";
	//player groupchat "You need a gun to rob the station!";
	//(format ['server globalChat "A sensor alarm at the Save N Go has just gone off!";', _sel]) call broadcast;
	//};
//_sel = "Save N Go";
//(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
//['geld', station9money] call INV_AddInvItem;
//(format ['server globalChat "Someone robbed the %1!";', _sel]) call broadcast;
//player sidechat format ["You stole $%1 from the gas station!", station9money];
//station9money = 0;
//publicvariable "station9money";
//local_useBankPossible = false;
//sleep 300;
//local_useBankPossible = true;
//};