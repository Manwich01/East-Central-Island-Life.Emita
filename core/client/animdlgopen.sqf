//  Animations Dialogue
if (!(createDialog "animationsdialog")) exitWith {
   hint "Dialog Error!";
};

{
   _index = lbAdd [1, (_x select 3)];	
	lbSetData [1, _index, (_x select 1)];
} forEach ANIM_AllAnimationArray;

buttonSetAction [2, "[lbCurSel 1, (lbData [1, (lbCurSel 1)])] execVM ""core\client\animplay.sqf""; closedialog 0;"];