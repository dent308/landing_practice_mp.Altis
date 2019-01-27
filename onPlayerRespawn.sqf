waitUntil {uiSleep 0.1; alive player};

diag_log format ["onPlayerRespawn.sqf %1", player];


// selectPlayer player;
//_pos = position zombie2;
// zombie1 = createUnit["C_man_polo_1_F", position zombie2, None, []];
// zombie1 = zombie_group createUnit ["Civilian1",position zombie2, [], 0.1, "NONE"];
//zombie1 = zombie_group createUnit ["C_man_polo_1_F", _pos, [], 0.5, "NONE"];   

// private _randomSpawnPos = zombie2 getPos [(random 20) + 1,random 359];  
// zombie1 = "C_man_polo_1_F" createUnit [_randomSpawnPos, zombie_group, "", 0.5];