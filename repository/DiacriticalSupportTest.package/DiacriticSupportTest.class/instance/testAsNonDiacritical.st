testing
testAsNonDiacritical
	self assert: 'canción' asNonDiacritical equals: 'cancion'.
	self assert: 'cancion' asNonDiacritical equals: 'cancion'.
	self assert: 'empêché' asNonDiacritical equals: 'empeche'.
	self
		assert: 'Příliš žluťoučký kůň úpěl ďábelské ódy' asNonDiacritical
		equals: 'Prilis zlutoucky kun upel dabelske ody'