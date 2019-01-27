waitUntil {uiSleep 0.1; alive player};
diag_log format["initPlayerServer.sql called %1", player];
// Load the briefing (it will wait for the player object)
//execVM "briefing.sqf";

// waitUntil {player == player && time > 1};
// player addRating 9999;

//diag_log format["player : %1", player];

// it seems onPlayerRespawn is called also on the first spawn.
// player addAction ["Request mission", { {[player] call spawnPlayerTask;} remoteExecCall ["bis_fnc_call", 2]; } ];

//[_vehicle, ["Repair", { [_this select 0] remoteExec ["xenoRepair", _this select 0]; }]] remoteExec ["addAction", 0, "addrepair" + (_vehicle call BIS_fnc_netId)];
//[_vehicle, ["Spawn crew", { _this remoteExec ["spawnCrewAction", _this select 0]; }]] remoteExec ["addAction", 0, "addcrew" + (_vehicle call BIS_fnc_netId)];

