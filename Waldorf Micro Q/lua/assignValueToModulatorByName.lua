function assignValueToModulatorByName(midi,byteNo,offsetValue,modName)
	-- Your method code here
	rawValue = midi:getLuaData():getByte(byteNo)
	--console("modName:"..modName)
	--console("rawValue:"..rawValue)
	newValue=rawValue+offsetValue
	panel:getModulatorByName(modName):setModulatorValue(newValue, false, false, false)
	
	if modName=="cbTriggerMode&Unisono" then
		if rawValue%16==0 then
		newValue=rawValue/16	
		panel:getModulatorByName(modName):setModulatorValue(newValue, false, false, false)
		elseif rawValue%16==1 then
 			if rawValue==16 then
				newValue=1
				panel:getModulatorByName(modName):setModulatorValue(newValue, false, false, false)
				--console("cbTriggerUnisono set to value: "..newValue)
			elseif rawValue==17 then
				newValue=7
				panel:getModulatorByName(modName):setModulatorValue(newValue, false, false, false)
				--console("cbTriggerUnisono set to value: "..newValue)
			elseif rawValue==32 then
				newValue=2
				panel:getModulatorByName(modName):setModulatorValue(newValue, false, false, false)
				--console("cbTriggerUnisono set to value: "..newValue)
			elseif rawValue==33 then
				newValue=8
				panel:getModulatorByName(modName):setModulatorValue(newValue, false, false, false)
				--console("cbTriggerUnisono set to value: "..newValue)
			elseif rawValue==48 then
				newValue=3
				panel:getModulatorByName(modName):setModulatorValue(newValue, false, false, false)
				--console("cbTriggerUnisono set to value: "..newValue)
			elseif rawValue==49 then
				newValue=9
				panel:getModulatorByName(modName):setModulatorValue(newValue, false, false, false)
				--console("cbTriggerUnisono set to value: "..newValue)
			elseif rawValue==64 then
				newValue=4
				panel:getModulatorByName(modName):setModulatorValue(newValue, false, false, false)
				--console("cbTriggerUnisono set to value: "..newValue)
			elseif rawValue==65 then
				newValue=10
				panel:getModulatorByName(modName):setModulatorValue(newValue, false, false, false)
				--console("cbTriggerUnisono set to value: "..newValue)
			elseif rawValue==80 then
				newValue=5
				panel:getModulatorByName(modName):setModulatorValue(newValue, false, false, false)
				--console("cbTriggerUnisono set to value: "..newValue)
			elseif rawValue==81 then
				newValue=11
				panel:getModulatorByName(modName):setModulatorValue(newValue, false, false, false)
			end
		end
	end
	
	if string.sub(modName,1,11)=="cbOscOctave" then
		--console("modName:"..modName)
		--console("rawValue:"..rawValue)
		newValue=(rawValue-16)/12
		panel:getModulatorByName(modName):setModulatorValue(newValue, false, false, false)
		--console("newValue:"..newValue)
		--console("successfully updated:"..modName)
	end
	

	
	if string.sub(modName,1,17)=="slEnvMode&Trigger" then
		--console("modName:"..modName)
		--console("rawValue:"..rawValue)
		if rawValue>4 then
			newValue=rawValue-27
			panel:getModulatorByName(modName):setModulatorValue(newValue, false, false, false)
		end	
		--console("newValue:"..newValue)
		--console("successfully updated:"..modName)
	end


	
end