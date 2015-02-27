testing
testHasAnyDiacritical

	self deny: 'cancion' hasAnyDiacritical.
	self assert: 'canción' hasAnyDiacritical.
	self assert: 'ó' hasAnyDiacritical.	
	self assert: 'garçon' hasAnyDiacritical.
	self assert: 'empêché' hasAnyDiacritical.
	self assert: 'avant-goût' hasAnyDiacritical.	
	self assert: 'añora' hasAnyDiacritical.
