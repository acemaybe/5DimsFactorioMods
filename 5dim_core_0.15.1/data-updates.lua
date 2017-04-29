--Stack changes
	if settings.startup["5d-change-stack"] then
		for _,item in pairs(data.raw.item) do
			item.stack_size = item.stack_size * settings.startup["5d-change-stack"].value
		end
		for _,item in pairs(data.raw.ammo) do
			item.stack_size = item.stack_size * settings.startup["5d-change-stack"].value
		end
		for _,item in pairs(data.raw["capsule"]) do
			item.stack_size = item.stack_size * settings.startup["5d-change-stack"].value
		end
		for _,item in pairs(data.raw["module"]) do
			item.stack_size = item.stack_size * settings.startup["5d-change-stack"].value
		end
	end

--Player changes
	--Inventory size
		if settings.startup["5d-change-inventory"] then
			data.raw["player"]["player"].inventory_size = settings.startup["5d-change-inventory"].value
		end

	--Reach distance
		if settings.startup["5d-long-reach"] then
			data.raw["player"]["player"].build_distance = settings.startup["5d-long-reach"].value
			data.raw["player"]["player"].reach_distance = settings.startup["5d-long-reach"].value
		end

	--Light
		if settings.startup["5d-light-radius"] then
			data.raw["player"]["player"].light = {{ minimum_darkness = 0.3, intensity = 0.9, size = settings.startup["5d-light-radius"].value,},}
		end

	--Health
		if settings.startup["5d-hp"] then
			data.raw["player"]["player"].health = settings.startup["5d-hp"].value
		end

	--Healing per tick
		if settings.startup["5d-healing"] then
			data.raw["player"]["player"].healing_per_tick = settings.startup["5d-healing"].value
		end

	--Mining speed
		if settings.startup["5d-mining-speed"] then
			data.raw["player"]["player"].mining_speed = settings.startup["5d-mining-speed"].value
		end

	--Mining speed
		if settings.startup["5d-crafting-speed"] then
			data.raw["player"]["player"].crafting_speed = settings.startup["5d-crafting-speed"].value
		end

-- Harded game
	-- Enemies spawner health
		if settings.startup["5d-bicho-spawner-hp"] then
			for _,item in pairs(data.raw["unit-spawner"]) do
				item.max_health = item.max_health * settings.startup["5d-bicho-spawner-hp"].value
			end
		end

	-- Enemies health
		if settings.startup["5d-bicho-hp"] then
			for _,item in pairs(data.raw.unit) do
				item.max_health = item.max_health * settings.startup["5d-bicho-hp"].value
			end
		end

	-- Enemies healing per tick
		if settings.startup["5d-bicho-healing"] then
			for _,item in pairs(data.raw.unit) do
				item.healing_per_tick = item.healing_per_tick * settings.startup["5d-bicho-healing"].value
			end
		end

	-- Technologies cost

	-- Recipes cost