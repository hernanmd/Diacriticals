testing
testAsNonDiacritical

	self assert: 'canción' asNonDiacritical = 'cancion'.
	self assert: 'cancion' asNonDiacritical = 'cancion'.
	self assert: 'empêché' asNonDiacritical = 'empeche'.



