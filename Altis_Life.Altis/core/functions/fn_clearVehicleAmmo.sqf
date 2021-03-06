/*
	File: fn_clearVehicleAmmo.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Clears the vehicle of ammo types that we don't want.
*/
private["_vehicle","_veh"];
_vehicle = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {}; //DAFUQ
_veh = typeOf _vehicle;

if(_veh == "B_Boat_Armed_01_minigun_F") then
{
	_vehicle removeMagazinesTurret ["200Rnd_40mm_G_belt",[0]];
};

if(_veh == "B_APC_Wheeled_01_cannon_F") then 
{
	_vehicle removeMagazinesTurret ["60Rnd_40mm_GPR_Tracer_Red_shells",[0]];
	_vehicle removeMagazinesTurret ["40Rnd_40mm_APFSDS_Tracer_Red_shells",[0]];
};

if(_veh == "O_Heli_Attack_02_black_F") then 
{
	_vehicle removeMagazinesTurret ["250Rnd_30mm_APDS_shells", [0]];
	_vehicle removeMagazinesTurret ["250Rnd_30mm_HE_shells", [0]];
	_vehicle removeMagazinesTurret ["8Rnd_LG_scalpel", [0]];
	_vehicle removeMagazinesTurret ["38Rnd_80mm_rockets", [0]];
};

if(_veh == "B_Heli_Attack_01_F") then 
{
	_vehicle removeMagazinesTurret ["1000Rnd_20mm_shells", [0]];
	_vehicle removeMagazinesTurret ["4Rnd_AAA_missiles", [0]];
	_vehicle removeMagazinesTurret ["24Rnd_PG_missiles", [0]];
};

if(_veh == "B_Heli_Transport_01_F") then 
{
	_vehicle removeMagazinesTurret ["2000Rnd_65x39_Belt_Tracer_Red", [1]];
	_vehicle removeMagazinesTurret ["2000Rnd_65x39_Belt_Tracer_Red", [2]];
};

if(_veh == "I_Plane_Fighter_03_AA_F") then 
{
	_vehicle removeMagazinesTurret ["300Rnd_20mm_shells", [-1]];
	_vehicle removeMagazinesTurret ["2Rnd_AAA_missiles", [-1]];
	_vehicle removeMagazinesTurret ["4Rnd_GAA_missiles", [-1]];
	_vehicle removeMagazinesTurret ["120Rnd_CMFlare_Chaff_Magazine", [-1]];
};

if(_veh == "B_Plane_CAS_01_F") then 
{
	_vehicle removeMagazinesTurret ["1000Rnd_Gatling_30mm_Plane_CAS_01_F", [-1]];
	_vehicle removeMagazinesTurret ["2Rnd_Missile_AA_04_F", [-1]];
	_vehicle removeMagazinesTurret ["6Rnd_Missile_AGM_02_F", [-1]];
	_vehicle removeMagazinesTurret ["4Rnd_Bomb_04_F", [-1]];
	_vehicle removeMagazinesTurret ["7Rnd_Rocket_04_HE_F", [-1]];
	_vehicle removeMagazinesTurret ["7Rnd_Rocket_04_AP_F", [-1]];
	_vehicle removeMagazinesTurret ["2Rnd_AAA_missiles", [-1]];
};

if(_veh == "O_Plane_CAS_02_F") then
{
    _vehicle removeMagazinesTurret ["500Rnd_Cannon_30mm_Plane_CAS_02_F",[-1]];
    _vehicle removeMagazinesTurret ["2Rnd_Missile_AA_03_F",[-1]];
    _vehicle removeMagazinesTurret ["4Rnd_Missile_AGM_01_F",[-1]];
    _vehicle removeMagazinesTurret ["2Rnd_Bomb_03_F",[-1]];
    _vehicle removeMagazinesTurret ["20Rnd_Rocket_03_HE_F",[-1]];
    _vehicle removeMagazinesTurret ["20Rnd_Rocket_03_AP_F",[-1]];
};

clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;