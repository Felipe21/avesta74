function decayItem(params)
    local item = getThingfromPos(params.itempos)
    local toitem = params.toitem
    if toitem == nil or toitem == 0 then
        doRemoveItem(item.uid,1)
    else
        doTransformItem(item.uid,toitem)
    end
end

function doDecayItemTo(itempos, toitem, timer)
    params = {itempos=itempos, toitem=toitem}
    addEvent(decayItem, timer*1000, params)
end

ROPE_SPOT = {384, 418}
OPENED_HOLE = {294, 383, 469, 470, 482, 482, 485, 489}
CLOSED_HOLE = {468, 481, 483}
OPENED_TRAP = {462}
DOWN_LADDER = {369, 370, 408, 409, 427, 428, 3135, 3136, 5545, 5763}
JUNGLE_GRASS = {2782, 3985}

WATER = {490, 4608, 491, 492, 493, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 
628, 629, 4609, 4610, 4611, 4612, 4613, 4614, 4615, 4616, 4617, 4618, 4619, 4620, 4621, 
4622, 4623, 4624, 4625, 4664, 4665, 4666, 4820, 4821, 4822, 4823, 4824, 4825}

MUD = {103, 351, 352, 353, 354, 355}

SWAMP = {602, 603, 604, 605, 4691, 4692, 4693, 4694, 4695, 4696, 4697, 4698, 4699, 4700, 4701, 4702, 4703, 4704, 4705, 4706, 4707, 4708, 4709, 4710, 4711, 4712, 4749, 4750, 4751, 4752, 4753, 4754, 4755, 4758}

NORMAL_CORPSE_STAGE_I = {
2317,2806,2808,2813,2820,2824,2826,2830,2835,2839,2844,2848,2849,2853,2860,2862,
2864,2866,2871,2876,2881,2886,2889,2893,2905,2908,2914,2920,2924,2928,2931,2935,
2938,2940,2945,2960,2967,2969,2972,2979,2981,2983,2985,2987,2992,2995,3019,3043,
3046,3055,3058,3065,3067,3069,3073,3077,3080,3084,3086,3090,3095,3099,3104,3109,
3113,3119,3128,3129,4251,4253,4256,4259,4262,4265,4268,4271,4274,4277,4280,4283,
4286,4289,4292,4295,4298,4301,4304,4307,4310,4314,4317,4323,5522,5523,5524,5525,
5526,5540,5625,5628,5666,5688,5727,6022,6083,6303,6321,6333,6337,6341,6560,7317,
7321,7325,7328,7331,7335,7339,7623,7624,7629,7638,7741,7848,7927,7931,7970}

SWAMP_CORPSE_STAGE_I = {2807,2817,2857,2897,2899,2902,3004,3007,3010,3013,3077,4289,4313,4320,5765,6520,6552}

OVEN_ON = {1786, 1788, 1790, 1792, 6356, 6358, 6360, 6362}
LADDER = {1386, 3678, 5543}
DECAYTO_ITEM_INCREMENT = {2041, 2044, 2047, 2050, 2052, 2054, 5812}

LOCKED_DOORS = {1209, 1212, 1231, 1234, 1249, 1252, 3535, 3544, 4913, 4916, 5098, 5107, 5116, 5125, 5134, 5137, 5140, 5143, 5278, 5281, 5732, 5735, 6192, 6195, 6249, 6252, 6891, 6900, 7033, 7042, 8445, 8448}

CONSTRUCTIONS = {
	[3938] = 1614, [3901] = 1615, [3902] = 1616, [3903] = 1619, [3904] = 1652, [3905] = 1658, [3906] = 1666,
	[3907] = 1670, [3908] = 1674, [3909] = 1716, [3910] = 1718, [3916] = 1724, [3911] = 1728, [3912] = 1732,
	[6373] = 1736, [3917] = 2117, [3913] = 2080, [3914] = 2084, [3922] = 2093, [3923] = 2094, [3924] = 2098,
	[5088] = 2099, [3925] = 2101, [3928] = 2104, [3929] = 2105, [3918] = 2582, [3927] = 2586, [3919] = 3806,
	[3920] = 3808, [3921] = 3810, [3930] = 3813, [3935] = 3817,	[3926] = 3826, [3932] = 3828, [3933] = 3830,
	[3934] = 3832, [3936] = 6371
}

FOODS = {	
	[2328] = {84, "Gulp."},	[2362] = {48, "Yum."}, [2666] = {180, "Munch."}, [2667] = {144, "Munch."},
	[2668] = {120, "Mmmm."}, [2669] = {204, "Munch."}, [2670] = {48, "Gulp."}, [2671] = {360, "Chomp."},
	[2672] = {720, "Chomp."}, [2673] = {60, "Yum."}, [2674] = {72, "Yum."}, [2675] = {156, "Yum."}, 
	[2676] = {96, "Yum."}, [2677] = {12, "Yum."}, [2678] = {216, "Slurp."}, [2679] = {12, "Yum."}, 
	[2680] = {24, "Yum."}, [2681] = {108, "Yum."}, [2682] = {240, "Yum."}, [2683] = {204, "Munch."}, 
	[2684] = {60, "Crunch."}, [2685] = {72, "Munch."}, [2686] = {108, "Crunch."}, [2687] = {24, "Crunch."},
	[2688] = {24, "Mmmm."}, [2689] = {120, "Crunch."}, [2690] = {72, "Crunch."}, [2691] = {96, "Crunch."}, 
	[2695] = {72, "Gulp."}, [2696] = {108, "Smack."}, [2769] = {60, "Crunch."}, [2787] = {108, "Crunch."},
	[2788] = {48, "Crunch."}, [2789] = {264, "Crunch."}, [2790] = {360, "Crunch."}, [2791] = {108, "Crunch."},
	[2792] = {72, "Crunch."}, [2793] = {144, "Crunch."}, [2794] = {36, "Crunch."}, [2795] = {432, "Crunch."},
	[2796] = {300, "Crunch."}, 	[5097] = {48, "Yum."}, [5678] = {96, "Gulp."}, [6125] = {96, "Mmmm."},
	[6278] = {120, "Mmmm."}, [6279] = {180, "Mmmm."}, [6393] = {144, "Mmmm."}, [6394] = {180, "Mmmm."},
	[6501] = {240, "Mmmm."}, [6541] = {72, "Gulp."}, [6542] = {72, "Gulp."}, [6543] = {72, "Gulp."},
	[6544] = {72, "Gulp."}, [6545] = {72, "Gulp."}, [6569] = {12, "Mmmm."}, [6574] = {60, "Mmmm."},
	[7158] = {300, "Munch."}, [7159] = {180, "Munch."}, [7372] = {0, "Yummy."}, [7373] = {0, "Yummy."},
	[7374] = {0, "Yummy."},	[7375] = {0, "Yummy."}, [7376] = {0, "Yummy."}, [7377] = {0, "Yummy."}
}

 


DISTILLERY = {5469, 5470, 5513, 5514}
DISTILLERY_FULL = 600