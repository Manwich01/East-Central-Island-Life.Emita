/////////////////////////////////////////////////////////
//              stationrobloop.sqf                     //
/////////////////////////////////////////////////////////
// Server component that tracks, and updates the money //
// in the gas station(s).                              //
/////////////////////////////////////////////////////////
private ["_i","_tmpVal"];

//Define default money
station1money = 5000; publicVariable "station1money";
station2money = 5000; publicVariable "station2money";
station3money = 5000; publicVariable "station3money";
station4money = 5000; publicVariable "station4money";
station5money = 5000; publicVariable "station5money";
station6money = 5000; publicVariable "station6money";
station7money = 5000; publicVariable "station7money";
station8money = 5000; publicVariable "station8money";
station9money = 5000; publicVariable "station9money";
pharmmoney = 5000; publicVariable "pharmmoney";
barmoney = 5000; publicVariable "barmoney";
barmoney1 = 5000; publicVariable "barmoney1";
barmoney2 = 5000; publicVariable "barmoney2";
barmoney3 = 5000; publicVariable "barmoney3";

_tmpVal = 0;

while {true} do {
   _randomamount = ceil ((random 250) + 250);
   //Loop and update the public variables
   for "_i" from 0 to 13 do {
      switch _i do {
         case 0: { _tmpVal = station1money; };
         case 1: { _tmpVal = station2money; };
         case 2: { _tmpVal = station3money; };
         case 3: { _tmpVal = station4money; };
         case 4: { _tmpVal = station5money; };
         case 5: { _tmpVal = station6money; };
         case 6: { _tmpVal = station7money; };
         case 7: { _tmpVal = station8money; };
         case 8: { _tmpVal = station9money; };
         case 9: { _tmpVal = pharmmoney; };
         case 10: { _tmpVal = barmoney; };
         case 11: { _tmpVal = barmoney1; };
         case 12: { _tmpVal = barmoney2; };
         case 13: { _tmpVal = barmoney3; };
      };
      
      if (_tmpVal < maxstationmoney) then {
         _tmpVal = _tmpVal + _randomamount;
         
         if (_tmpVal > maxstationmoney) then {
            _tmpVal = maxstationmoney;
         };
      };
      switch _i do {
         case 0: { station1money = _tmpVal; };
         case 1: { station2money = _tmpVal; };
         case 2: { station3money = _tmpVal; };
         case 3: { station4money = _tmpVal; };
         case 4: { station5money = _tmpVal; };
         case 5: { station6money = _tmpVal; };
         case 6: { station7money = _tmpVal; };
         case 7: { station8money = _tmpVal; };
         case 8: { station9money = _tmpVal; };
         case 9: { pharmmoney = _tmpVal; };
         case 10: { barmoney = _tmpVal; };
         case 11: { barmoney1 = _tmpVal; };
         case 12: { barmoney2 = _tmpVal; };
         case 13: { barmoney3 = _tmpVal; };
      };
   };
   
   //Update the values to the clients.
   publicVariable "station1money";
   publicVariable "station2money";
   publicVariable "station3money";
   publicVariable "station4money";
   publicVariable "station5money";
   publicVariable "station6money";
   publicVariable "station7money";
   publicVariable "station8money";
   publicVariable "station9money";
   publicVariable "pharmmoney";
   publicVariable "barmoney";
   publicVariable "barmoney1";
   publicVariable "barmoney2";
   publicVariable "barmoney3";
   sleep 30;
};