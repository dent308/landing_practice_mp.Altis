diag_log "initServer called";

LZCOUNT = 140;
STARTPRIORITY = 1000;
EXLUDESPAWNLZS = [(missionNamespace getVariable "lz1")]; // Exclude the airport location near spawn marker

// Precompile code
execVM "precompile.sqf";

lzCounter = 0;
publicVariable "lzCounter";
taskIds = [];
publicVariable "taskIds";

//Handle MP parameters
_handle = execVM "readparams.sqf";
waitUntil {isNull _handle};
if (autoSpawnTasks) then
{
    [EXLUDESPAWNLZS] spawn taskSpawner;
};

bird1 execVM "vehicleInit.sqf";
bird2 execVM "vehicleInit.sqf";
bird3 execVM "vehicleInit.sqf";
bird4 execVM "vehicleInit.sqf";
hawk1 execVM "vehicleInit.sqf";
hawk2 execVM "vehicleInit.sqf";
foot1 execVM "vehicleInit.sqf";
pawnee1 execVM "vehicleInit.sqf";
pawnee2 execVM "vehicleInit.sqf";
huron1 execVM "vehicleInit.sqf";
huron2 execVM "vehicleInit.sqf";
taru1 execVM "vehicleInit.sqf";
taru2 execVM "vehicleInit.sqf";
taru3 execVM "vehicleInit.sqf";
kajman execVM "vehicleInit.sqf";
orca1 execVM "vehicleInit.sqf";
orca2 execVM "vehicleInit.sqf";
mohawk execVM "vehicleInit.sqf";
hellcat1 execVM "vehicleInit.sqf";
hellcat2 execVM "vehicleInit.sqf";
m900 execVM "vehicleInit.sqf";

//arsenalBox addAction ["Arsenal", {["Open",true] spawn BIS_fnc_arsenal}]; 

// Flag init complete
missionInitComplete = true;
publicVariable "missionInitComplete";

