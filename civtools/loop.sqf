while {true} do
{
  waitUntil {alive player};
 [] execVM "civtools\Activate.sqf";


  waitUntil {!alive player};
};