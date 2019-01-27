waitUntil {uiSleep 0.1; alive player};

diag_log format ["onPlayerRespawn.sqf %1", player];


player addAction ["Request mission", { {[player] call spawnPlayerTask;} remoteExecCall ["bis_fnc_call", 2]; } ];
