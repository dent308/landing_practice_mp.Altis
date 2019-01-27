// TODO: Rename this function, since it checks for the landing status too
//diag_log format["playerVehicleInList called, _this: %1", _this];

//18:01:46 "playerVehicleInList called, _this: [[bird1,B Alpha 1-5:4,B Alpha 1-5:2,B Alpha 1-5:1,B Alpha 1-5:3,B Alpha 1-5:5]]"

private _triggerList = _this select 0;
private _returnValue = false;

scopeName "main";
{
    private _plr = _x;
    private _veh = vehicle _plr;
    //if ( (_plr != _veh) && ([_veh] call isLanded) && (_veh in _triggerList) ) then

    if ( (_plr != _veh) && ([_veh] call isLanded) ) then
    {
    	//if (_veh in _triggerList) then
    	if ({isPlayer _x} count _triggerList > 0) then
    	{
        	_returnValue = _veh;
	        diag_log format["playerVehicleInList is : %1", _veh];
	        breakTo "main";
	    }
	}
} forEach ([] call getAlivePlayers);

//diag_log format["playerVehicleInList returning: %1", _returnValue];
_returnValue