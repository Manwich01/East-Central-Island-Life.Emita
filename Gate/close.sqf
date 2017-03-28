_laptop = _this select 0;
_player = _this select 1;
_actionid = _this select 2;

_GatePlayers = ["38008454","6823360","9479430","78444102"];
if (getPlayerUID _player in _GatePlayers) then
{
admingate hideObject false;
//yourobjectname2 hideObject false;
} else {
titleText ["Admin Compound NO TRESSPASSING", "PLAIN DOWN", 3];
};.