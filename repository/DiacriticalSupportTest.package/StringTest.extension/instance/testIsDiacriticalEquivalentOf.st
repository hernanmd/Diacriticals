*DiacriticalSupportTest
testIsDiacriticalEquivalentOf

	self deny: ('canción' isDiacriticalEquivalentOf: 'cancien').
	self assert: ('canción' isDiacriticalEquivalentOf: 'cancion').
	self deny: ('canción' isDiacriticalEquivalentOf: 'canción').
	self assert: ('cancion' isDiacriticalEquivalentOf: 'canción')

