local unitName = "base"

local unitDef =
{
-- Internal settings
	BuildPic = "base.png",
	Category = "BUILDING NOTSCOUT NOTHEAVY NOTAIR NOTEPIC NOTSHIP NOTSTEALTHY ALL",
	ObjectName = "baseMotherboard.s3o",
	Side = "ddos",
	TEDClass = "PLANT",
	script = "basescript.lua",
	
-- Unit limitations and properties
	ActivateWhenBuilt = true,
	BuildTime = 1000,
    commander = true,
	Description = "Produces units",
	MaxDamage = 1500,
	Name = "Base",
	RadarDistance = 0,
	SightDistance = 400,
	SoundCategory = "BUILDING",
	Upright = 1,
	WorkerTime = 80,
	levelground = 1,
	
-- Energy and metal related
	BuildCostEnergy = 500,
	EnergyStorage = 0,
	EnergyUse = 0,
	MetalStorage = 0,
	EnergyMake = 1, 
	MakesMetal = 1, 
	MetalMake = 1,
	
-- Pathfinding and related
	FootprintX = 4,
	FootprintZ = 4,
	MaxSlope = 10,
	MaxWaterDepth = 0,
	YardMap = "cccc cccc cccc cccc",

-- Abilities
	Builder = 1,
        Reclaimable = 0,
	ShowNanoSpray = 0,
	CanBeAssisted = 0,
	buildoptions = 
	{
		"ddos",
		"builder",
		"ic",
	},
	
-- Abilities new to Spring
	
-- Weapons and related

	ExplodeAs = "BUILDINGLARGEDEATH",
	SelfDestructAs = "BUILDINGLARGEDEATH",
	SelfDestructCountdown = 5,
}

return lowerkeys({ [unitName] = unitDef })
