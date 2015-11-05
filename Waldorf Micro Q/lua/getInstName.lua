instName={}
--
-- Called when a modulator value changes
-- @mod   http://ctrlr.org/api/class_ctrlr_modulator.html
-- @value    new numeric value of the modulator
--
getInstName = function(mod, value)
	
	--if panel:getRestoreState() == true or panel:getProgramState() == true then
	--	return
	--end
	
	modName=mod:getProperty("name")
	console(""..modName)
	modNameLen=string.len(modName)
	--console(""..modNameLen)

	if string.sub(modName,1,2)=="cb" then --cbInstBank*
		if modNameLen==10 then modSuffix=""
		elseif modNameLen>10 then modSuffix=string.sub(modName,10-modNameLen)
 		end
		--console("modSuffix:"..modSuffix)
		--if value==-1 then mod:setModulatorValue(3,false,false,false) end

		console("cb-value:"..value)
		if value==0 then ls=panel:getListBox("lsBankA") end
		if value==1 then ls=panel:getListBox("lsBankB") end
		if value==2 then ls=panel:getListBox("lsBankC") end
		if value>=3 then ls=panel:getListBox("lsBankD") end
		
		slInstSoundVal=panel:getModulatorByName("slInstSound"..modSuffix):getValue()
		console("slInstVal:"..slInstSoundVal)
		instName=ls:getTextForValue(slInstSoundVal-1)
		console(instName)
		lb=panel:getLabelComponent("lbInstName"..modSuffix)
		lb:setText(instName)

		--console (what(mod))
	elseif string.sub(modName,1,2)=="sl" then --slInstSound*
		if modNameLen==11 then modSuffix=""
		elseif modNameLen>11 then modSuffix=string.sub(modName,11-modNameLen)
 		end
		--console("modSuffix:"..modSuffix)
		bkIndex=panel:getModulatorByName("cbInstBank"..modSuffix):getValue()
		console("cbInstVal"..bkIndex)
		if bkIndex==0 then ls=panel:getListBox("lsBankA") end
		if bkIndex==1 then ls=panel:getListBox("lsBankB") end
		if bkIndex==2 then ls=panel:getListBox("lsBankC") end
		if bkIndex>=3 then ls=panel:getListBox("lsBankD") end
		console("sl-value:"..value)	
		instName=ls:getTextForValue(value-1)
		console(instName)
		lb=panel:getLabelComponent("lbInstName"..modSuffix)
		lb:setText(instName)
	end
	

end
