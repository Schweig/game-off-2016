local unitName = "laptop"

local unitDef =  
{
-- Internal settings
	BuildPic = "laptop.png",
	Category = "TANK SMALL NOTAIR NOTSUB",
	ObjectName = "laptop.s3o",
	Side = "TANK",
	TEDClass = "TANK",
	script = "laptop.lua",

-- Unit limitations and properties
	ActivateWhenBuilt = 1,
	BuildTime = 500,
	Description = "Turret",
	MaxDamage = 1000,
	Name = "Laptop",
	RadarDistance = 0,
	SightDistance = 400,
	SoundCategory = "TANK",
	Upright = 0,
	levelground = 1,
	
-- Energy and metal related
	BuildCostEnergy = 10,
	EnergyStorage = 0,
	EnergyUse = 0,
	MetalStorage = 0,
	EnergyMake = 0, 
	MakesMetal = 0, 
	MetalMake = 0,
	ExtractsMetal = 0,
	
-- Pathfinding and related
	FootprintX = 2,
	FootprintZ = 2,
	MaxSlope = 10,
	MaxWaterDepth = 0,
	YardMap = "c",

	
-- Abilities
	Builder = 0,
    Reclaimable = 0,
	CanAttack = 1,
    CanGuard = 1,
	CanMove = 0,
	CanPatrol = 0,
	
-- Abilities new to Spring
	
-- Weapons and related
	ExplodeAs = "CUBEBUILDINGSMALLDEATH",
	SelfDestructAs = "CUBEBUILDINGSMALLDEATH",
	SelfDestructCountdown = 5,
	weapons = {
        [1] = {
            def = "orangeblob",
        },
    },
}

local weaponDefs = {
    orangeblob = {
		name = "Orange Plasma Cannon",
		weapontype = "Cannon",
		accuracy = 50,
		areaofeffect = 100,
		avoidfeature = false,
		avoidfriendly = true,
		canattackground = true,
		collidefriendly = true,
		collisionsize = 8,
		commandfire = false,
		craterboost = 0,
		cratermult = 0,
		edgeeffectiveness = 0.1,
		explosionspeed = 128,
		impulseboost = 0,
		impulsefactor = 0,
		intensity = 1,
		noselfdamage = true,
		canManualFire = true,
		size = 4,
--        soundstart = "tank_fire",
        soundhit = "orangeblob_explo",
		range = 1000,
		reloadtime = 1.5,
		rgbcolor = "1.0 1.0 1.0",
		turret = true,
		texture1 = "flame",
		weaponvelocity = 400,
		explosiongenerator = "custom:TANKGUN_FX",
		damage =
		{
			default = 55,
		},
	},
}
unitDef.weaponDefs = weaponDefs
return lowerkeys({ [unitName] = unitDef })
