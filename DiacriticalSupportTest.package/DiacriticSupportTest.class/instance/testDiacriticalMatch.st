testing
testDiacriticalMatch

	self assert: ( ('canción' diacriticalMatch: 'cancien') = 0 ).
	self assert: ( ('cancien' diacriticalMatch: 'canción') = 0 ).
	
	self assert: ( ( 'canción' diacriticalMatch: 'cancion') = 1 ).
	self assert: ( ('cancion' diacriticalMatch: 'canción') = 1 ).	

	self assert: ( ('cánción' diacriticalMatch: 'canción') = 1 ).
	self assert: ( ('cancion' diacriticalMatch: 'cancion') = 0 ).	
		
	self assert: ('empêché' diacriticalMatch: 'empeche') = 2.



