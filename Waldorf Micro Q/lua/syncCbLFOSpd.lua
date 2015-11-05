--
-- Called when a modulator value changes
-- @mod   http://ctrlr.org/api/class_ctrlr_modulator.html
-- @value    new numeric value of the modulator
--
syncCbLFOSpd = function(mod, value)
	newValue=math.floor(value/2)
	panel:getModulatorByName("cbLFOSpdClk"):setModulatorValue(newValue,false,false,false)

end