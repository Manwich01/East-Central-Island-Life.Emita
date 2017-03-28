/////////////////////////////////////////////
//            functions.sqf                //
/////////////////////////////////////////////
// Collections of functions, that a script //
// could use.                              //
/////////////////////////////////////////////

playerSpecialList = ["76561198027901651", //manwich01
                     "76561198010485284"  //baker
                    ];

/**
 * isPlayerSpecial
 * Checks against a constant array of player UIDs, to see
 * the given player is special(Admin most likely).
 * RETURNS: true/false, if the player is special or not
 */
isPlayerSpecial = {
   private ["_ret"];
   _ret = (getPlayerUID _this) in playerSpecialList;
   
   _ret
};