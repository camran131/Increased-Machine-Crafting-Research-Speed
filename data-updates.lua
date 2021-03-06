require 'config'

--Increase all pollution
for key, prototype_type in pairs(data.raw) do
    for name, prototype in pairs(prototype_type) do
		--5x more mined
        if prototype.mining_speed then
			prototype.mining_speed = prototype.mining_speed * Config.MiningSpeed
        end
		--2.5x more crafting speed
        if prototype.crafting_speed then
			prototype.crafting_speed = prototype.crafting_speed * Config.MachineCraftingSpeed
        end
		--3x more research speed
        if prototype.researching_speed then
			prototype.researching_speed = prototype.researching_speed * Config.ResearchSpeed
        end
    end
end