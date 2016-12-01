local unitName  =  "ic"

local unitDef  =  {
--Internal settings
    BuildPic = "ic.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "ic.s3o",
    name = "IC",
    TEDClass = "DDOS",
    UnitName = "ddos",
    script = "icscript.lua",
    
--Unit limitations and properties
    BuildTime = 200,
    Description = "A suicide unit(ctrl+d to use).",
    MaxDamage = 30,
    RadarDistance = 0,
    SightDistance = 100,
    SoundCategory = "TANK",
    Upright = 0,
    
--Energy and metal related
    BuildCostEnergy = 1,
    BuildCostMetal = 1,
    
--Pathfinding and related
    Acceleration = 0.5,
    BrakeRate = 0.1,
    FootprintX = 2,
    FootprintZ = 2,
    MaxSlope = 15,
    MaxVelocity = 5.0,
    MaxWaterDepth = 20,
    MovementClass = "Default2x2",
    TurnRate = 1000,
    
--Abilities
    Builder = 0,
    CanAttack = 1,
    CanGuard = 1,
    CanMove = 1,
    CanPatrol = 1,
    CanStop = 1,
    LeaveTracks = 0,
    Reclaimable = 0,
	CanSelfDestruct = 1,
	SelfDestructCountdown = 2,
	SelfDestructAS = "kama",
    
--Hitbox
--    collisionVolumeOffsets    =  "0 0 0",
--    collisionVolumeScales     =  "5 5 5",
--    collisionVolumeTest       =  1,
--    collisionVolumeType       =  "box",
    
--Weapons and related
    BadTargetCategory = "NOTAIR",
    ExplodeAs = "TANKDEATH",
    NoChaseCategory = "AIR",
	

    weapons = {
        [1] = {
            def = "kama",
        },
    },
}

local weaponDefs = {
    kama = {
		name = "Self Destruct",
		weapontype = "Cannon",
		accuracy = 10,
		areaofeffect = 200,
		avoidfeature = false,
		avoidfriendly = false,
		canattackground = true,
		collidefriendly = true,
		collisionsize = 8,
		commandfire = false,
		craterboost = 0,
		cratermult = 1,
		edgeeffectiveness = 0.1,
		explosionspeed = 128,
		impulseboost = 2,
		impulsefactor = 2,
		intensity = 2,
		noselfdamage = false,
		canManualFire = true,
		size = 4,
--        soundstart = "tank_fire",
        soundhit = "orangeblob_explo",
		range = 1000,
		reloadtime = 1.5,
		rgbcolor = "1.0 1.0 1.0",
		turret = true,
		texture1 = "flare",
		weaponvelocity = 400,
		explosiongenerator = "custom:TANKGUN_FX",
		damage =
		{
			default = 100,
		},
	},
}


unitDef.weaponDefs = weaponDefs
return lowerkeys({ [unitName]  =  unitDef })
