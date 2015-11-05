--
-- Called when a panel receives a midi message (does not need to match any modulator mask)
-- @midi   CtrlrMidiMessage object
--

midiReceived = function(midi)

	--console ("midiReceived()")
	length=midi:getLuaData():getSize()
	--console ("msg length is: "..length.."bytes")
	if	(	
		length==392 and
		midi:getLuaData():getByte(0) == 0xF0 and
		midi:getLuaData():getByte(1) == 0x3E and
		midi:getLuaData():getByte(2) == 0x10 and
		midi:getLuaData():getByte(3) == 0x00 and
		midi:getLuaData():getByte(4) == 0x10 and
		midi:getLuaData():getByte(5) == 0x20
		)
 		then
		console ("Buffer received: "..length.."Bytes")
		console("running ParseSdat...")
		parseSdat(midi,fixedDumpOffset)
	end

end