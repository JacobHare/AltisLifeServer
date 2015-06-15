#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000], // Kart (Bluking)
			["C_Kart_01_Fuel_F",15000], // Kart (Fuel)
			["C_Kart_01_Red_F",15000], // Kart (Redstone)
			["C_Kart_01_Vrana_F",15000] // Kart (Vrana)
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Hatchback_01_F",4500], // Hatchback
			["C_SUV_01_F",10000], // SUV
			["C_Hatchback_01_sport_F",15000], // Hatchback (Sport)
			["C_Van_01_box_F",10000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",50000], // MH-9 Hummingbird
			["O_Heli_Light_02_unarmed_F",75000] // PO-30 Orca (Black)
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",5000], // Quadbike
			["C_Hatchback_01_F",10000], // Hatchback
			["C_Offroad_01_F",20000], // Offroad
			["C_SUV_01_F",40000], // SUV
			["C_Hatchback_01_sport_F",50000] // Hatchback (Sport)
		];
		if(__GETC__(life_donator) > 0) then
		{
			_return =
			[
				["B_Quadbike_01_F",3500], // Quadbike
				["C_Hatchback_01_F",7000], // Hatchback
				["C_Offroad_01_F",14000], // Offroad
				["C_SUV_01_F",28000], // SUV
				["C_Hatchback_01_sport_F",35000] // Hatchback (Sport)
			];
		};
	};
	
/*

// Default Prices, for donor divide all these prices by - Level 1 = 5% | Level 2 = 10% | Level 3 = 20% | Level 4 = 35% | Level 5 = 50%

	case "donator_(level)":
	{
		_return =
		[
			["B_Quadbike_01_F",5000], // Quadbike
			["C_Hatchback_01_F",7000], // Hatchback
			["C_Hatchback_01_sport_F",100000], // Hatchback (Sport)
			["C_Offroad_01_F",14000], // Offroad
			["O_MRAP_02_F",3000000], // Ifrit
			["C_Van_01_transport_F",30000], // Truck
			["C_Van_01_box_F",15000], // Truck Boxer
			["I_Truck_02_transport_F",100000], // Zamak Transport
			["I_Truck_02_covered_F",120000], // Zamak Transport (Covered)
			["O_Truck_03_transport_F",200000], // Tempest Transport
			["O_Truck_03_covered_F",225000], // Tempest Transport (Covered)
			["B_Truck_01_transport_F",400000], // HEMTT Transport
			["B_Truck_01_box_F",550000], // HEMTT Box
			["B_Truck_01_mover_F",285000], // HEMTT
			["B_Heli_Light_01_F",450000], // MH-9 Hummingbird
			["C_Heli_Light_01_civil_F",450000], // M-900
			["O_Heli_Light_02_unarmed_F",1000000], // PO-30 Orca (Black)
			["I_Heli_light_03_unarmed_F",4000000], // WY-55 Hellcat (Green)
			["B_Heli_Transport_03_unarmed_F",30000000], // CH-67 Huron (Black)
			["I_Heli_Transport_02_F",6000000] // CH-49 Mohawk
		];
	};
	
*/

	case "donator": // All prices divided by 50%
	{
		_return =
		[
			["B_Quadbike_01_F",2500], // Quadbike
			["C_Hatchback_01_F",3500], // Hatchback
			["C_Hatchback_01_sport_F",50000], // Hatchback (Sport)
			["C_Offroad_01_F",7000], // Offroad
			["C_Van_01_transport_F",15000], // Truck
			["C_Van_01_box_F",7500], // Truck Boxer
			["I_Truck_02_transport_F",50000], // Zamak Transport
			["I_Truck_02_covered_F",60000], // Zamak Transport (Covered)
			["O_Truck_03_transport_F",100000], // Tempest Transport
			["O_Truck_03_covered_F",112000], // Tempest Transport (Covered)
			["B_Truck_01_transport_F",112000], // HEMTT Transport
			["B_Truck_01_box_F",275000], // HEMTT Box
			["B_Truck_01_mover_F",145000], // HEMTT
			["B_Heli_Light_01_F",225000], // MH-9 Hummingbird
			["C_Heli_Light_01_civil_F",225000], // M-900
			["O_Heli_Light_02_unarmed_F",500000], // PO-30 Orca (Black)
			["I_Heli_light_03_unarmed_F",2000000], // WY-55 Hellcat (Green)
			["B_Heli_Transport_03_unarmed_F",15000000], // CH-67 Huron (Black)
			["I_Heli_Transport_02_F",3000000] // CH-49 Mohawk
		]
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_transport_F",50000], // Truck
			["C_Van_01_box_F",75000], // Truck Boxer
			["I_Truck_02_transport_F",200000], // Zamak Transport
			["I_Truck_02_covered_F",250000], // Zamak Transport (Covered)
			["O_Truck_03_transport_F",300000], // Tempest Transport
			["O_Truck_03_covered_F",325000], // Tempest Transport (Covered)
			["O_Truck_03_device_F",450000], // Tempest (Device)
			["B_Truck_01_mover_F",300000], // HEMTT
			["B_Truck_01_transport_F",400000], // HEMTT Transport
			["B_Truck_01_covered_F",425000], // HEMTT Transport (Covered)
			["B_Truck_01_box_F",550000] // HEMTT Box
		];	
		if(__GETC__(life_donator) > 0) then
		{
			_return =
			[
				["C_Van_01_transport_F",35000], // Truck
				["C_Van_01_box_F",55000], // Truck Boxer
				["I_Truck_02_transport_F",140000], // Zamak Transport
				["I_Truck_02_covered_F",175000], // Zamak Transport (Covered)
				["O_Truck_03_transport_F",210000], // Tempest Transport
				["O_Truck_03_covered_F",225000], // Tempest Transport (Covered)
				["O_Truck_03_device_F",315000], // Tempest (Device)
				["B_Truck_01_mover_F",210000], // HEMTT
				["B_Truck_01_transport_F",280000], // HEMTT Transport
				["B_Truck_01_covered_F",295000], // HEMTT Transport (Covered)
				["B_Truck_01_box_F",385000] // HEMTT Box
			];
		};
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",5000], // Quadbike
			["B_G_Offroad_01_F",20000], // Offroad
			["B_Heli_Light_01_F",450000], // MH-9 Hummingbird
			["O_Heli_Transport_04_F",1900000], // Mi-290 Taru
			["O_Heli_Transport_04_bench_F",2000000], // Mi-290 Taru (Bench)
			["O_Heli_Transport_04_covered_F",2100000], // Mi-290 Taru (Transport)
			["I_Heli_light_03_unarmed_F",4000000] // WY-55 Hellcat (Green)
		];
		if(__GETC__(life_donator) > 0) then
		{
			_return =
			[
				["B_Quadbike_01_F",3500], // Quadbike
				["B_G_Offroad_01_F",14000], // Offroad
				["B_Heli_Light_01_F",315000], // MH-9 Hummingbird
				["O_Heli_Transport_04_F",1300000], // Mi-290 Taru
				["O_Heli_Transport_04_bench_F",1400000], // Mi-290 Taru (Bench)
				["O_Heli_Transport_04_covered_F",1500000], // Mi-290 Taru (Transport)
				["I_Heli_light_03_unarmed_F",2800000] // WY-55 Hellcat (Green)
			];
		};
	};
	
	case "wreb":
	{
		_return =
		[
			["B_Quadbike_01_F",5000], // Quadbike
			["B_G_Offroad_01_F",20000], // Offroad
			["O_MRAP_02_F",80000], // Ifrit
			["B_Heli_Light_01_F",450000], // MH-9 Hummingbird
			["O_Heli_Transport_04_F",1900000], // Mi-290 Taru
			["O_Heli_Transport_04_bench_F",2000000], // Mi-290 Taru (Bench)
			["O_Heli_Transport_04_covered_F",2100000], // Mi-290 Taru (Transport)
			["I_Heli_light_03_unarmed_F",4000000] // WY-55 Hellcat (Green)
		];
	};
	
	case "cop_car":
	{
		_return pushBack
		["B_Quadbike_01_F",2500]; // Quadbike
		_return pushBack
		["C_Hatchback_01_F",3500]; // Hatchback (Sport)
		_return pushBack
		["C_Hatchback_01_sport_F",15000]; // Hatchback (Sport)
		_return pushBack
		["C_Offroad_01_F",5000]; // Offroad
		_return pushBack
		["C_SUV_01_F",20000]; // SUV
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_MRAP_01_F",30000]; // Hunter
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",900000], // MH-9 Hummingbird
			["C_Heli_Light_01_civil_F",900000], // M-900
			["O_Heli_Light_02_unarmed_F",3000000], // PO-30 Orca (Black)
			["I_Heli_light_03_unarmed_F",7000000], // WY-55 Hellcat (Green)
			["B_Heli_Transport_03_unarmed_F",9000000] // CH-67 Huron (Black)
		];
		if(__GETC__(life_donator) > 0) then
		{
			_return =
			[
				["B_Heli_Light_01_F",450000], // MH-9 Hummingbird
				["C_Heli_Light_01_civil_F",450000], // M-900
				["O_Heli_Light_02_unarmed_F",1500000], // PO-30 Orca (Black)
				["I_Heli_light_03_unarmed_F",3500000], // WY-55 Hellcat (Green)
				["I_Heli_Transport_02_F",3900000], // CH-49 Mohawk
				["B_Heli_Transport_03_unarmed_F",4400000] // CH-67 Huron (Black)
			];
		};
	};
	
	case "civ_plane":
	{
		_return =
		[
			["I_Plane_Fighter_03_AA_F", 5000000], // A-143 Buzzard (AA)
			["O_Plane_CAS_02_F", 5000000], // To-199 Neophron (CAS)
			["B_Plane_CAS_01_F", 5000000] // A-164 Wipeout (CAS)
		];
		if(__GETC__(life_donator) == 1) then
		{
			_return =
			[
				["I_Plane_Fighter_03_AA_F", 3500000], // A-143 Buzzard (AA)
				["O_Plane_CAS_02_F", 3500000], // To-199 Neophron (CAS)
				["B_Plane_CAS_01_F", 3500000] // A-164 Wipeout (CAS)
			];
		};
	};
	
	case "cop_air":
	{
		_return pushBack
		["B_Heli_Light_01_F",120000]; // MH-9 Hummingbird
		if(__GETC__(life_coplevel) > 4) then
		{
			_return pushBack
			["I_Heli_light_03_unarmed_F",200000]; // WY-55 Hellcat (Green)
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",450000]; // UH-80 Ghost Hawk
		};
	};
	
	case "cop_airhq":
	{
		_return pushBack
		["B_Heli_Light_01_F",120000]; // MH-9 Hummingbird
		if(__GETC__(life_coplevel) > 4) then
		{
			_return pushBack
			["I_Heli_light_03_unarmed_F",200000]; // WY-55 Hellcat (Green)
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",450000]; // UH-80 Ghost Hawk
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000], // Rescue Boat
			["C_Boat_Civil_01_F",22000] // Motorboat
		];
		if(__GETC__(life_donator) > 0) then
		{
			_return =
			[
				["C_Rubberboat",3500], // Rescue Boat
				["C_Boat_Civil_01_F",15000] // Motorboat
			];
		};
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000], // Assault Boat
			["C_Boat_Civil_01_police_F",20000], // Motorboat (Police)
			["B_Boat_Armed_01_minigun_F",75000], // Speedboat Minigun
			["B_SDV_01_F",100000] // SDV
		];
		if(__GETC__(life_donator) > 0) then
		{
			_return =
			[
				["B_Boat_Transport_01_F",2100], // Assault Boat
				["C_Boat_Civil_01_police_F",14000], // Motorboat (Police)
				["B_Boat_Armed_01_minigun_F",52000], // Speedboat Minigun
				["B_SDV_01_F",70000] // SDV
			];
		};
	};
};

_return;
