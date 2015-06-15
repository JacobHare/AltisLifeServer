#include <macro.h>
/*
    File: fn_weaponShopCfg.sqf
    Author: Bryan "Tonic" Boardwine
    
    Description:
    Master configuration file for the weapon shops.
    
    Return:
    String: Close the menu
    Array: 
    [Shop Name,
    [ //Array of items to add to the store
        [classname,Custom Name (set nil for default),price]
    ]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
    case "med_basic":
    {
        switch (true) do 
        {
            case (playerSide != independent): {"You are not an EMS Medic"};
            default {
                ["Hospital EMS Shop",
                    [
                        ["ItemGPS",nil,0],
                        ["Binocular",nil,0],
                        ["ToolKit",nil,0],
                        ["FirstAidKit",nil,0],
                        ["Medikit",nil,0],
                        ["NVGoggles",nil,0]
                    ]
                ];
            };
        };
    };
    case "cop_basic":
    {
        switch(true) do
        {
            case (playerSide != west): {"You are not a cop!"};
            case (__GETC__(life_coplevel) > 6): 
            {
                ["SWAT Shop",
                    [
                        ["LMG_Zafir_F",nil,50000],
                        ["150Rnd_762x51_Box",nil,150],
                        ["launch_RPG32_F",nil,60000],
                        ["RPG32_F",nil,100],
                        ["SMG_01_F","Taser Rifle",20000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
                        ["B_UavTerminal",nil,100],
                        ["30Rnd_45ACP_Mag_SMG_01_tracer_green","Taser Magazine",50],
                        ["arifle_sdar_F",nil,8000],
                        ["20Rnd_556x45_UW_mag",nil,125],
                        ["SMG_02_F",nil,5000],
                        ["30Rnd_9x21_Mag",nil,150],
                        ["arifle_Katiba_F",nil,15000],
                        ["30Rnd_65x39_caseless_green",nil,200],
                        ["arifle_MXM_F",nil,20000],
                        ["arifle_MXC_F",nil,17500],
                        ["arifle_MX_F",nil,20000],
                        ["30Rnd_65x39_caseless_mag",nil,150],
                        ["arifle_Mk20_F",nil,8000],
                        ["30Rnd_556x45_Stanag",nil,100],
                        ["srifle_EBR_F",nil,45000],
						["srifle_DMR_03_tan_F",nil,45000],
						["srifle_DMR_06_olive_F",nil,45000],
                        ["20Rnd_762x51_Mag",nil,200],
                        ["LMG_Mk200_F",nil,45000],
                        ["200Rnd_65x39_cased_Box_Tracer",nil,500],
                        ["200Rnd_65x39_cased_Box",nil,500],
                        ["arifle_MX_SW_F",nil,40000],
                        ["100Rnd_65x39_caseless_mag",nil,400],
                        ["100Rnd_65x39_caseless_mag_Tracer",nil,400],
                        ["hgun_Pistol_heavy_01_F",nil,1000],
                        ["11Rnd_45ACP_Mag",nil,25],
                        ["HandGrenade_Stone","Flashbang",1700],
                        ["Rangefinder",nil,100],
                        ["optic_NVS",nil,2000],
                        ["optic_Holosight",nil,2000],
                        ["optic_Aco",nil,1000],
                        ["optic_DMS",nil,1000],
                        ["optic_MRCO",nil,1500],
                        ["acc_flashlight",nil,1000],
                        ["acc_pointer_IR",nil,1000],
                        ["muzzle_snds_H",nil,1000],
                        ["muzzle_snds_L",nil,1000],
                        ["muzzle_snds_M",nil,1000],
                        ["muzzle_snds_B",nil,1000],
                        ["muzzle_snds_H_MG",nil,1000],
                        ["muzzle_snds_acp",nil,1000],
                        ["Binocular",nil,100],
                        ["ItemGPS",nil,100],
                        ["ToolKit",nil,100],
                        ["FirstAidKit",nil,100],
                        ["Medikit",nil,1000],
                        ["NVGoggles_OPFOR",nil,100],
                        ["SatchelCharge_Remote_Mag",nil,10000],
                        ["optic_Hamr",nil,8000],
                        ["SmokeShell",nil,100],
                        ["SmokeShellRed",nil,100],
                        ["SmokeShellYellow",nil,100],
                        ["SmokeShellPurple",nil,100],
                        ["SmokeShellOrange",nil,100],
                        ["MineDetector",nil,1000],
                        ["B_IR_Grenade",nil,1000],
						["bipod_01_F_snd",nil,1000]
                    ]
                ];
            };
            case (__GETC__(life_coplevel) > 4): 
            {
                ["Top Cop Shop",
                    [

                        ["SMG_01_F","Taser Rifle",20000],
                        ["30Rnd_45ACP_Mag_SMG_01_tracer_green","Taser Magazine",50],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
                        ["arifle_sdar_F",nil,8000],
                        ["20Rnd_556x45_UW_mag",nil,125],
                        ["SMG_02_F",nil,5000],
                        ["30Rnd_9x21_Mag",nil,150],
                        ["arifle_Katiba_F",nil,15000],
                        ["30Rnd_65x39_caseless_green",nil,200],
                        ["arifle_MXC_F",nil,17500],
                        ["arifle_MXM_F",nil,20000],
                        ["arifle_MX_F",nil,20000],
                        ["30Rnd_65x39_caseless_mag",nil,150],
                        ["arifle_Mk20_F",nil,8000],
                        ["30Rnd_556x45_Stanag",nil,100],
                        ["srifle_EBR_F",nil,45000],
						["srifle_DMR_03_tan_F",nil,45000],
						["srifle_DMR_06_olive_F",nil,45000],
                        ["20Rnd_762x51_Mag",nil,200],
                        ["LMG_Mk200_F",nil,45000],
                        ["200Rnd_65x39_cased_Box_Tracer",nil,500],
                        ["200Rnd_65x39_cased_Box",nil,500],
                        ["arifle_MX_SW_F",nil,40000],
                        ["100Rnd_65x39_caseless_mag",nil,400],
                        ["100Rnd_65x39_caseless_mag_Tracer",nil,400],
                        ["hgun_Pistol_heavy_01_F",nil,1000],
                        ["11Rnd_45ACP_Mag",nil,25],
                        ["HandGrenade_Stone","Flashbang",1700],
                        ["Rangefinder",nil,100],
                        ["optic_NVS",nil,2000],
                        ["optic_Holosight",nil,2000],
                        ["optic_Aco",nil,1000],
                        ["optic_DMS",nil,1000],
						["optic_AMS_snd",nil,1000],
						["optic_KHS_tan",nil,1000],
                        ["optic_MRCO",nil,1500],
                        ["acc_flashlight",nil,1000],
                        ["acc_pointer_IR",nil,1000],
                        ["muzzle_snds_H",nil,1000],
                        ["muzzle_snds_L",nil,1000],
                        ["muzzle_snds_M",nil,1000],
                        ["muzzle_snds_B",nil,1000],
                        ["muzzle_snds_H_MG",nil,1000],
                        ["muzzle_snds_acp",nil,1000],
                        ["Binocular",nil,100],
                        ["ItemGPS",nil,100],
                        ["ToolKit",nil,100],
                        ["FirstAidKit",nil,100],
                        ["Medikit",nil,1000],
                        ["NVGoggles_OPFOR",nil,100],
                        ["SatchelCharge_Remote_Mag",nil,10000],
                        ["optic_Hamr",nil,8000],
                        ["SmokeShell",nil,100],
                        ["SmokeShellRed",nil,100],
                        ["SmokeShellYellow",nil,100],
                        ["SmokeShellPurple",nil,100],
                        ["SmokeShellOrange",nil,100],
                        ["MineDetector",nil,1000],
                        ["B_IR_Grenade",nil,1000],
						["bipod_01_F_snd",nil,1000]
                    ]
                ];
            };
            case (__GETC__(life_coplevel) > 1): 
            {
                ["Altis Patrol Officer Shop",
                    [
                        ["arifle_Katiba_C_F",nil,15000],
                        ["arifle_MX_F",nil,20000],
                        ["arifle_MXC_F",nil,17500],
                        ["arifle_MXM_F",nil,25000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
                        ["SMG_01_F","Taser Rifle",20000],
                        ["30Rnd_45ACP_Mag_SMG_01_tracer_green","Taser Magazine",50],
                        ["SMG_02_F",nil,10000],
                        ["MineDetector",nil,1000],
                        ["acc_flashlight",nil,750],
                        ["optic_Holosight",nil,1200],
                        ["arifle_Mk20_F",nil,8000],
                        ["30Rnd_556x45_Stanag",nil,110],
                        ["30Rnd_65x39_caseless_green",nil,150],
                        ["30Rnd_65x39_caseless_mag",nil,100],
                        ["30Rnd_9x21_Mag",nil,150],
                        ["Rangefinder",nil,1000],
                        ["optic_Hamr",nil,8000],
                        ["optic_MRCO",nil,4000],
                        ["Binocular",nil,100],
                        ["ItemGPS",nil,100],
                        ["ToolKit",nil,100],
                        ["FirstAidKit",nil,1],
                        ["Medikit",nil,2000],
                        ["SmokeShell",nil,100],
                        ["SmokeShellRed",nil,100],
                        ["SmokeShellYellow",nil,100],
                        ["SmokeShellPurple",nil,100],
                        ["SmokeShellOrange",nil,100],
                        ["B_Kitbag_cbr",nil,800],
                        ["NVGoggles_OPFOR",nil,1000],
                        ["MineDetector",nil,1000],
						["bipod_01_F_snd",nil,1000]
                    ]
                ];
            };
            default
            {
                ["Cadet Shop",
                    [
                        ["SMG_01_F","Taser Rifle",20000],
                        ["30Rnd_45ACP_Mag_SMG_01_tracer_green","Taser Magazine",50],
                        ["hgun_P07_snds_F","Stun Pistol",1200],
                        ["arifle_TRG21_F",nil,10000],
                        ["30Rnd_556x45_Stanag",nil,150],
                        ["hgun_P07_F",nil,1750],
                        ["Binocular",nil,150],
                        ["ItemGPS",nil,100],
                        ["ToolKit",nil,100],
                        ["muzzle_snds_L",nil,650],
                        ["FirstAidKit",nil,150],
                        ["Medikit",nil,3000],
                        ["NVGoggles_OPFOR",nil,1000],
                        ["optic_ACO_grn",nil,2000],
                        ["16Rnd_9x21_Mag",nil,150],
                        ["optic_Holosight",nil,1200]
                    ]
                ];
            };
        };
    };
    
    case "rebel":
    {
        switch(true) do
        {
            case (playerSide != civilian): {"You are not a civilian!"};
            case (!license_civ_rebel): {"You don't have a Rebel training license!"};
            default
            {
                ["Mohammed's Jihadi Shop",
                    [
                        ["SMG_01_F",nil,70000],
                        ["hgun_PDW2000_F",nil,60000],
                        ["arifle_Mk20_F",nil,90000],
						["arifle_TRG21_F",nil,95000],
                        ["arifle_Katiba_F",nil,140000],
                        ["arifle_MX_Black_F",nil,140000],
                        ["arifle_MXC_Black_F",nil,140000],
						["arifle_SDAR_F","Scuba Gun",15000],
						["20rnd_556x45_UW_mag","Scuba Ammo",120],
                        ["30Rnd_65x39_caseless_green",nil,500],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,700],
                        ["30Rnd_65x39_caseless_mag",nil,800],
                        ["30Rnd_45ACP_Mag_SMG_01",nil,750],
                        ["30Rnd_556x45_Stanag",nil,500],
                        ["V_HarnessO_brn",nil,1000],
                        ["optic_Aco",nil,3500],
                        ["optic_ACO_grn",nil,3500],
                        ["optic_Holosight",nil,3500],
                        ["optic_Aco_smg",nil,3500],
                        ["optic_ACO_grn_smg",nil,3500],
                        ["optic_Holosight_smg",nil,3600],
                        ["acc_flashlight",nil,1000],
                        ["muzzle_snds_H",nil,35000],
                        ["SmokeShell",nil,500],
                        ["SmokeShellRed",nil,500],
                        ["SmokeShellYellow",nil,500],
                        ["SmokeShellPurple",nil,500],
                        ["SmokeShellOrange",nil,500],
                        ["ToolKit",nil,3000],
                        ["itemgps",nil,1000],
                        ["FirstAidKit",nil,500],
                        ["NVGoggles",nil,2000],
                        ["SatchelCharge_Remote_Mag",nil,125000],
                        ["MineDetector",nil,10000],
						["bipod_01_F_blk",nil,1000]
                    ]
                ];
            };
        };
    };
    
    case "whitelistedreb":
    {
        switch(true) do
        {
            case (playerSide != civilian): {"You are not a civilian!"};
            case (!license_civ_whitelistedreb2): {"You are not a whitelisted rebel!"};
            default
            {
                ["Whitelisted Rebel Shop",
                    [
                        ["hgun_Pistol_Signal_F",nil,10000],
                        ["hgun_PDW2000_F",nil,20000],
                        ["SMG_01_F",nil,30000],
                        ["arifle_Mk20_F",nil,80000],
						["arifle_TRG21_F",nil,50000],
                        ["arifle_Katiba_F",nil,120000],
                        ["arifle_Katiba_C_F",nil,120000],
                        ["arifle_MX_Black_F",nil,95000],
                        ["arifle_MXC_Black_F",nil,95000],
                        ["arifle_MXM_Black_F",nil,110000],
                        ["arifle_MX_SW_Black_F",nil,120000],
						["srifle_DMR_01_F",nil,130000],
                        ["srifle_EBR_F",nil,200000],
						["srifle_DMR_03_F",nil,200000],
						["srifle_DMR_06_camo_F",nil,200000],
                        ["30Rnd_9x21_Mag",nil,500],
                        ["30Rnd_556x45_Stanag",nil,100],
                        ["30Rnd_45ACP_Mag_SMG_01",nil,750],
                        ["30Rnd_65x39_caseless_green",nil,750],
                        ["30Rnd_65x39_caseless_mag",nil,750],
						["100Rnd_65x39_caseless_mag",nil,400],
                        ["100Rnd_65x39_caseless_mag_Tracer",nil,400],
                        ["20Rnd_762x51_Mag",nil,1500],
                        ["10Rnd_762x51_Mag",nil,1500],
                        ["SmokeShell",nil,2500],
                        ["6Rnd_GreenSignal_F",nil,500],
                        ["6Rnd_RedSignal_F",nil,500],
                        ["optic_Aco",nil,5000],
                        ["optic_ACO_grn",nil,5000],
                        ["optic_Holosight",nil,5000],
                        ["optic_Aco_smg",nil,5000],
                        ["optic_ACO_grn_smg",nil,5000],
                        ["optic_Holosight_smg",nil,5000],
                        ["optic_DMS",nil,50000],
						["optic_KHS_blk",nil,50000],
						["optic_AMS",nil,50000],
                        ["optic_SOS",nil,80000],
                        ["acc_flashlight",nil,500],
                        ["acc_pointer_IR",nil,2000],
                        ["muzzle_snds_H",nil,3500],
                        ["muzzle_snds_B",nil,6000],
                        ["ToolKit",nil,3000],
                        ["Medikit",nil,5000],
                        ["optic_Hamr",nil,7500],
                        ["MineDetector",nil,10000],
						["bipod_01_F_blk",nil,1000]
                    ]
                ];
            };
        };
    };
	
	case "bounty":
	{
		switch(true) do {
			case (playerSide != civilian): {"You are not a civilian"};
			case (!license_civ_bounty): {"You are not a bounty hunter"};
			default
			{
				["Bounty Hunter Store",
					[
						["hgun_PDW2000_F",nil,40000],
						["optic_Aco_smg",nil,5000],
						["optic_ACO_grn_smg",nil,5000],
						["30Rnd_9x21_Mag",nil,500],
						["FirstAidKit",nil,2000],
						["NVGoggles",nil,2000],
						["Smokeshell","Smoke Grenade",50]
					]
				];
			}
		}
	};
    
	case "donator": // 40% off
    {
        switch(true) do
        {
            case (playerSide != civilian): {"You are not a civilian!"};
            default
            {
                ["Donator Weapon Shop",
                    [
						["hgun_Pistol_Signal_F","Firework Launcher",6000],
						["SMG_01_F",nil,50000],
						["hgun_PDW2000_F",nil,42000],
						["arifle_Mk20_F",nil,54000],
						["arifle_Katiba_F",nil,72000],
						["arifle_Katiba_C_F",nil,60000],
						["arifle_MX_Black_F",nil,84000],
						["arifle_MXC_Black_F",nil,80000],
						["arifle_MXM_Black_F",nil,96000],
						["arifle_MX_SW_Black_F",nil,120000],
						["srifle_DMR_01_F",nil,138000],
						["arifle_SDAR_F","Scuba Gun",9000],
						["30Rnd_9x21_Mag",nil,300],
						["30Rnd_556x45_Stanag",nil,450],
						["30Rnd_45ACP_Mag_SMG_01",nil,450],
						["30Rnd_65x39_caseless_green",nil,450],
						["30Rnd_65x39_caseless_mag",nil,450],
						["100Rnd_65x39_caseless_mag",nil,240],
						["100Rnd_65x39_caseless_mag_Tracer",nil,240],
						["20Rnd_762x51_Mag",nil,900],
						["10Rnd_762x51_Mag",nil,900],
						["6Rnd_RedSignal_F","Red Rocket",325],
						["6Rnd_GreenSignal_F","Green Rocket",325],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,1000],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,1200],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300],
						["bipod_01_F_blk",nil,1000]
                    ]
                ];
            };
        };
    };
	
	case "fireworks": 
	{
		["Firework Store",
			[
				["hgun_Pistol_Signal_F","Firework Launcher",10000],
				["6Rnd_RedSignal_F","Red Rocket",750],
				["6Rnd_GreenSignal_F","Green Rocket",750]
			]
		];
	};
	
    case "gun":
    {
        switch(true) do
        {
            case (playerSide != civilian): {"You are not a civilian!"};
            case (!license_civ_gun): {"You don't have a Firearms license!"};
            default
            {
                ["Billy Joe's Firearms",
                    [
                        ["hgun_Rook40_F",nil,6500],
                        ["hgun_Pistol_heavy_02_F",nil,9850],
                        ["hgun_ACPC2_F",nil,11500],
                        ["hgun_PDW2000_F",nil,20000],
                        ["optic_ACO_grn_smg",nil,2500],
                        ["V_Rangemaster_belt",nil,4900],
                        ["16Rnd_9x21_Mag",nil,25],
                        ["9Rnd_45ACP_Mag",nil,45],
                        ["6Rnd_45ACP_Cylinder",nil,50],
                        ["30Rnd_9x21_Mag",nil,75]
                    ]
                ];
            };
        };
    };
    
    case "gang":
    {
        switch(true) do
        {
            case (playerSide != civilian): {"You are not a civilian!"};
            default
            {
                ["Hideout Armament",
                    [
                        ["hgun_Rook40_F",nil,1500],
                        ["hgun_Pistol_heavy_02_F",nil,2500],
                        ["hgun_ACPC2_F",nil,4500],
                        ["optic_ACO_grn_smg",nil,950],
                        ["V_Rangemaster_belt",nil,1900],
                        ["16Rnd_9x21_Mag",nil,25],
                        ["9Rnd_45ACP_Mag",nil,45],
                        ["6Rnd_45ACP_Cylinder",nil,50],
                        ["30Rnd_9x21_Mag",nil,75]
                    ]
                ];
            };
        };
    };
    
    case "genstore":
    {
        ["Altis General Store",
            [
                ["Binocular",nil,150],
                ["ItemGPS",nil,100],
                ["ToolKit",nil,3000],
                ["FirstAidKit",nil,150],
                ["NVGoggles",nil,2000],
                ["Chemlight_red",nil,300],
                ["Chemlight_yellow",nil,300],
                ["Chemlight_green",nil,300],
                ["Chemlight_blue",nil,300]
            ]
        ];
    };
};
