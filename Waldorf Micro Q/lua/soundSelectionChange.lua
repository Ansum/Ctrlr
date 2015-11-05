--
-- Called when a modulator value changes
-- @mod   http://ctrlr.org/api/class_ctrlr_modulator.html
-- @value    new numeric value of the modulator
--
soundSelectionChange = function(mod,value)
	
	currentMod=panel:getModulatorByName("slRedSndProgramChg")
	
	--bankAVal=panel:getModulatorByName("btBankSelect"):getValue()
	--bankBVal=panel:getModulatorByName("btBankSelect-1"):getValue()
	--bankCVal=panel:getModulatorByName("btBankSelect-2"):getValue()

	--console (string.format("A: ".."%i",bankAVal))
	--console (string.format("B: ".."%i",bankBVal))
	--console (string.format("C: ".."%i",bankCVal))
	--console (string.format("Sound: ".."%03i",value))
	displayName=panel:getModulatorByName("lbSndNumber")
	displayName:getComponent():setPropertyString("uiLabelText",string.format("Sound: ".."%03i",value))
	
	displayName=panel:getModulatorByName("lbSndName")
	displayName:getComponent():setPropertyString("uiLabelText","loading...")
	
	requestSdat()	

end	
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			