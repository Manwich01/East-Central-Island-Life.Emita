_art = _this select 0;

if (_art == "use") then 

{
	if(player distance getmarkerpos "fgate" <= 50) then {
	_item   = _this select 1;
	_anzahl = _this select 2;
	[_item, -1] call INV_AddInvItem;
		if ((random 100) < 20) then 
		{	
		player groupchat format ["The code to unlock is %1",armat_JailCode];		
		}
		else
		{
		player groupchat "Code Breaker Malfunction";		
		};
	}
	else
	{player groupchat "You are not near the entrance of the prison";};
};
								
		