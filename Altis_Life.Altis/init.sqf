enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.8";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "scripts\fn_addATMS.sqf";
[] execVM "scripts\fn_noSideVoice.sqf";
[] execVM "scripts\fn_statusBar.sqf";
_igiload = execVM "IgiLoad\IgiLoadInit.sqf";
// [] execVM "scripts\fn_snowfall.sqf";
[] execVM "zlt_fastrope.sqf";

StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};