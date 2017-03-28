//////////////////////////////////////////////////////////
//                    unknown.sqf                       //
//////////////////////////////////////////////////////////
// Allows the player to report a problem to the police  //
//////////////////////////////////////////////////////////
private ["_code","_text"];
_text = format["%1 has called for an unknown reason, recommend contacting the person to find out what has happened.", name player];
_code = format["if (iscop) then {player sideChat ""%1"";};", _text];

if (isciv) then {
   _code call broadcast;
};

//TODO Consider a timeout. People could spam this.