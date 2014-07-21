surface.CreateFont("HPFont", {font="Trebuchet24", size = 44, outline = true, weight = 500})

local function hudPaint()
	local HP 		= LocalPlayer():Health()
	local Armor		= LocalPlayer():Armor()
	
	
	if Armor ~= 0 then
		draw.RoundedBox(4, 25, ScrH() - 65, math.Clamp(Armor, 0, 200) * 2, 10, Color(211, 84, 0, 255))
	end
	-- Health
	draw.RoundedBox(4, 25, ScrH() - 100, math.Clamp(HP, 0, 200) * 2, 40, Color(230, 126, 34,255))
	draw.SimpleText(HP, "HPFont", 25 + 28, ScrH() - 124, Color(255, 255, 255))
end
hook.Add("HUDPaint", "DarkRP_Mod_HUDPaint", hudPaint)


MsgC(Color(0, 255, 0), "Rust HUD v1.0 Loaded")