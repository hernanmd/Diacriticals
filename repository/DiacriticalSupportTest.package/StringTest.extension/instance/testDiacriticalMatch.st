*DiacriticalSupportTest
testDiacriticalMatch

	self assert: ('canción' diacriticalMatch: 'cancien') equals: 0.
	self assert: ('cancien' diacriticalMatch: 'canción') equals: 0.
	self assert: ('canción' diacriticalMatch: 'cancion') equals: 1.
	self assert: ('cancion' diacriticalMatch: 'canción') equals: 1.
	self assert: ('cánción' diacriticalMatch: 'canción') equals: 1.
	self assert: ('cancion' diacriticalMatch: 'cancion') equals: 0.
	self assert: ('empêché' diacriticalMatch: 'empeche') equals: 2