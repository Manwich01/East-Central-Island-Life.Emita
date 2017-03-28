private ["_loopasdf","_loopasdfg"];
_loopasdf=1;
_loopasdfg=1;

while {_loopasdf<=1} do {
   "if (iscop) then {Kontostand = (Kontostand + 80000); player sideChat ""-----  EVERYONE HAS RECIEVED 80,000 AS COMPENSATION ----- "";};" call broadcast;
   _loopasdf=_loopasdf+1;
};

while {_loopasdfg<=1} do {
   "if (isciv) then {Kontostand = (Kontostand + 80000); player sideChat ""-----  EVERYONE HAS RECIEVED 80,000 AS COMPENSATION ----- "";};" call broadcast;
   _loopasdfg=_loopasdfg+1;
};