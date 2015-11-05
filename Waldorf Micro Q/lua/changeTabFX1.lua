--
-- Called when a modulator value changes
-- @mod   http://ctrlr.org/api/class_ctrlr_modulator.html
-- @value    new numeric value of the modulator
--
changeTabFX1 = function(mod, value)
	
	if value~=0 then
		panel:getComponent("tabFX1"):setProperty ("uiTabsCurrentTab", value-1, false)
	else
		panel:getComponent("tabFX1"):setProperty ("uiTabsCurrentTab", value, false)
	end
end