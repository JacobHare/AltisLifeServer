#include <macro.h>
/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{
	case "I_Heli_Transport_02_F":
	{
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
		_ret =
		[
			[_path + "heli_transport_02_1_ion_co.paa","civ",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
			[_path + "heli_transport_02_1_dahoman_co.paa","civ",_path + "heli_transport_02_2_dahoman_co.paa",_path + "heli_transport_02_3_dahoman_co.paa"]
		];
		if(__GETC__(life_donator) > 0) then
		{
			_ret set[2,["#(argb,8,8,3)color(0.1,0,0.1,1)","civ","#(argb,8,8,3)color(0.1,0,0.1,1)","#(argb,8,8,3)color(0.1,0,0.1,1)"]]; // purple
			_ret set[3,["#(argb,8,8,3)color(1,1,1,0.9)","civ""#(argb,8,8,3)color(1,1,1,0.9)","#(argb,8,8,3)color(1,1,1,0.9)"]]; // white
			_ret set[4,["#(argb,8,8,3)color(0,0.1,0.3,1)","civ","#(argb,8,8,3)color(0,0.1,0.3,1)","#(argb,8,8,3)color(0,0.1,0.3,1)"]]; // sky
			_ret set[5,["#(argb,8,8,3)color(0.5,0,0,1)","civ","#(argb,8,8,3)color(0.5,0,0,1)","#(argb,8,8,3)color(0.5,0,0,1)"]]; // red
			_ret set[6,["#(argb,8,8,3)color(0.3,0.3,0,1)","civ","#(argb,8,8,3)color(0.3,0.3,0,1)","#(argb,8,8,3)color(0.3,0.3,0,1)"]]; // yellow
			_ret set[7,["#(argb,8,8,3)color(0.2,0,0.2,1)","civ","#(argb,8,8,3)color(0.2,0,0.2,1)","#(argb,8,8,3)color(0.2,0,0.2,1)"]]; // pink
			_ret set[8,["#(argb,8,8,3)color(0,0.5,0,1)","civ","#(argb,8,8,3)color(0,0.5,0,1)","#(argb,8,8,3)color(0,0.5,0,1)"]]; // lime
			_ret set[9,["CHROME","civ","CHROME","CHROME"]]; // chrome
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_ret =
		[
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport06_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			["textures\police\vehicles\police_shatchback.paa","cop"],
			["textures\Medic\NHS_hb.paa","med"]
		];
		if(__GETC__(life_donator) > 0) then
		{
			_ret set[8,["#(argb,8,8,3)color(0.1,0,0.1,1)","civ"]]; // purple
			_ret set[9,["#(argb,8,8,3)color(1,1,1,0.9)","civ"]]; // white
			_ret set[10,["#(argb,8,8,3)color(0,0.1,0.3,1)","civ"]]; // sky
			_ret set[11,["#(argb,8,8,3)color(0.5,0,0,1)","civ"]]; // red
			_ret set[12,["#(argb,8,8,3)color(0.3,0.3,0,1)","civ"]]; // yellow
			_ret set[13,["#(argb,8,8,3)color(0.2,0,0.2,1)","civ"]]; // pink
			_ret set[14,["#(argb,8,8,3)color(0,0.5,0,1)","civ"]]; // lime
			_ret set[15,["CHROME","civ"]]; // chrome
		};
	};
	
	case "C_Offroad_01_F":
	{
		_ret = 
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "civ"], 
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			["#(ai,64,64,1)Fresnel(0.3,3)","fed"],
			["textures\police\vehicles\police_offroad.paa","cop"], // ["#(ai,64,64,1)Fresnel(1.3,7)","cop"],
			["#(argb,8,8,3)color(0.6,0.3,0.01,1)","civ"]
		];
		if(__GETC__(life_donator) > 0) then
		{
			_ret set[9,["#(argb,8,8,3)color(0.1,0,0.1,1)","civ"]]; // purple
			_ret set[10,["#(argb,8,8,3)color(1,1,1,0.9)","civ"]]; // white
			_ret set[11,["#(argb,8,8,3)color(0,0.1,0.3,1)","civ"]]; // sky
			_ret set[12,["#(argb,8,8,3)color(0.5,0,0,1)","civ"]]; // red
			_ret set[13,["#(argb,8,8,3)color(0.3,0.3,0,1)","civ"]]; // yellow
			_ret set[14,["#(argb,8,8,3)color(0.2,0,0.2,1)","civ"]]; // pink
			_ret set[15,["#(argb,8,8,3)color(0,0.5,0,1)","civ"]]; // lime
			_ret set[16,["CHROME","civ"]]; // chrome
		};
	};
	
	case "C_Hatchback_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"],
			["textures\police\vehicles\police_hatchback.paa","cop"],
			["textures\Medic\NHS_hb.paa","med"]
		];
		if(__GETC__(life_donator) > 0) then
		{
			_ret set[10,["#(argb,8,8,3)color(0.1,0,0.1,1)","civ"]]; // purple
			_ret set[11,["#(argb,8,8,3)color(1,1,1,0.9)","civ"]]; // white
			_ret set[12,["#(argb,8,8,3)color(0,0.1,0.3,1)","civ"]]; // sky
			_ret set[13,["#(argb,8,8,3)color(0.5,0,0,1)","civ"]]; // red
			_ret set[14,["#(argb,8,8,3)color(0.3,0.3,0,1)","civ"]]; // yellow
			_ret set[15,["#(argb,8,8,3)color(0.2,0,0.2,1)","civ"]]; // pink
			_ret set[16,["#(argb,8,8,3)color(0,0.5,0,1)","civ"]]; // lime
			_ret set[17,["CHROME","civ"]]; // chrome
		};
	};
	
	case "C_SUV_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_02_co.paa","cop"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			["textures\police\vehicles\police_suv_white.paa","cop"],
			["textures\police\vehicles\police_suv_blue.paa","cop"],
			["textures\Medic\NHS_suv.paa","med"]
		];
		if(__GETC__(life_donator) > 0) then
		{
			_ret set[7,["#(argb,8,8,3)color(0.1,0,0.1,1)","civ"]]; // purple
			_ret set[8,["#(argb,8,8,3)color(1,1,1,0.9)","civ"]]; // white
			_ret set[9,["#(argb,8,8,3)color(0,0.1,0.3,1)","civ"]]; // sky
			_ret set[10,["#(argb,8,8,3)color(0.5,0,0,1)","civ"]]; // red
			_ret set[11,["#(argb,8,8,3)color(0.3,0.3,0,1)","civ"]]; // yellow
			_ret set[12,["#(argb,8,8,3)color(0.2,0,0.2,1)","civ"]]; // pink
			_ret set[13,["#(argb,8,8,3)color(0,0.5,0,1)","civ"]]; // lime
			_ret set[14,["CHROME","civ"]]; // chrome
		};
	};
	
	case "C_Van_01_box_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"],
			["textures\Medic\NHS_Boxer_Front.paa","med","textures\Medic\NHS_Boxer_Back.paa"]
		];
	};
	
	case "C_Van_01_transport_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "B_Quadbike_01_F":
	{
		_ret = 
		[
			["textures\police\vehicles\APDQuad.paa","cop"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"]
		];
		if(__GETC__(life_donator) > 0) then
		{
			_ret set[5,["#(argb,8,8,3)color(0.1,0,0.1,1)","civ"]]; // purple
			_ret set[6,["#(argb,8,8,3)color(1,1,1,0.9)","civ"]]; // white
			_ret set[7,["#(argb,8,8,3)color(0,0.1,0.3,1)","civ"]]; // sky
			_ret set[8,["#(argb,8,8,3)color(0.5,0,0,1)","civ"]]; // red
			_ret set[9,["#(argb,8,8,3)color(0.3,0.3,0,1)","civ"]]; // yellow
			_ret set[10,["#(argb,8,8,3)color(0.2,0,0.2,1)","civ"]]; // pink
			_ret set[11,["#(argb,8,8,3)color(0,0.5,0,1)","civ"]]; // lime
			_ret set[12,["CHROME","civ"]]; // chrome
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa","cop"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","fed"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["#(argb,8,8,3)color(1,1,1,0.8)","med"]
		];
		if(__GETC__(life_donator) > 0) then
		{
			_ret set[15,["#(argb,8,8,3)color(0.1,0,0.1,1)","civ"]]; // purple
			_ret set[16,["#(argb,8,8,3)color(1,1,1,0.9)","civ"]]; // white
			_ret set[17,["#(argb,8,8,3)color(0,0.1,0.3,1)","civ"]]; // sky
			_ret set[18,["#(argb,8,8,3)color(0.5,0,0,1)","civ"]]; // red
			_ret set[19,["#(argb,8,8,3)color(0.3,0.3,0,1)","civ"]]; // yellow
			_ret set[20,["#(argb,8,8,3)color(0.2,0,0.2,1)","civ"]]; // pink
			_ret set[21,["#(argb,8,8,3)color(0,0.5,0,1)","civ"]]; // lime
			_ret set[22,["CHROME","civ"]]; // chrome
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","fed"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"],
			["textures\Medic\NHS_hems.paa","med"]
		];
		if(__GETC__(life_donator) > 0) then
		{
			_ret set[5,["#(argb,8,8,3)color(0.1,0,0.1,1)","civ"]]; // purple
			_ret set[6,["#(argb,8,8,3)color(1,1,1,0.9)","civ"]]; // white
			_ret set[7,["#(argb,8,8,3)color(0,0.1,0.3,1)","civ"]]; // sky
			_ret set[8,["#(argb,8,8,3)color(0.5,0,0,1)","civ"]]; // red
			_ret set[9,["#(argb,8,8,3)color(0.3,0.3,0,1)","civ"]]; // yellow
			_ret set[10,["#(argb,8,8,3)color(0.2,0,0.2,1)","civ"]]; // pink
			_ret set[11,["#(argb,8,8,3)color(0,0.5,0,1)","civ"]]; // lime
			_ret set[12,["CHROME","civ"]]; // chrome
		};
	};
	
	case "B_MRAP_01_F":
	{
		_ret = 
		[
			["\A3\Soft_F\MRAP_01\Data\mrap_01_base_co.paa","cop"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "I_Truck_02_covered_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "I_Truck_02_transport_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
};

_ret;