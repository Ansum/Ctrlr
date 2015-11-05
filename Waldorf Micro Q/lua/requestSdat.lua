function requestSdat()
	-- Your method code here
	console("requesting SoundData...")
	--F0 3E 10 00 00 20 00 F7
	fetchDump = {0xF0; 0x3E, 0x10, 0x00, 0x00, 0x20, 0x00, 0xF7}
	panel:sendMidiMessageNow(CtrlrMidiMessage(fetchDump))


end