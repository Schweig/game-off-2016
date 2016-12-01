local base = piece "Cube1"

function script.Create(unitID)
    return 0
end

function script.Killed(recentDamage, maxHealth)
	return 0
end
function script.QueryWeapon() return base end
-- The piece that the bullet/laser/whatever comes out of.

function script.AimFromWeapon() return base end

function script.HitByWeapon(x,z,weaponDef,damage)
    -- This stops the unit taking damage until it's been built.
	if GetUnitValue(COB.BUILD_PERCENT_LEFT)>2 then return 0
	else return damage
	end

end

--since this building doesn't do anything, it could work fine with a completely empty script.
