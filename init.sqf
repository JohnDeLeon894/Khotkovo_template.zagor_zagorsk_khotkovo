['intro',false] call BIS_fnc_blackOut;
COMMON_DONE = false ;
player loadStatus "playerstate";

[] execVM 'common.sqf';
[] execVM 'briefing.sqf';
[] execVM 'functions\dynamicSimulationRunner.sqf';
waitUntil {COMMON_DONE};
_groupsNamed = [] execVM 'nameAllGroups.sqf';
parsingNamespace setVariable ['VCM_ARTYENABLE', false];
ACTIVE_TRIGGER = []execVM 'functions\findAndActivateNearestTrigger.sqf';
[] spawn jMD_fnc_spawnLoop;
sleep 5;
['intro', true] call BIS_fnc_blackIn;