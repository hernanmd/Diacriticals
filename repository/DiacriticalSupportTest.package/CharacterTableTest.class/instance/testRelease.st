tests
testRelease

	self assert: (CharacterTable release isKindOf: CharacterTable class).
	self assert: (Smalltalk at: #DiacriticalTable) equals: nil.
	self assert: (Smalltalk at: #NonDiacriticalTable) equals: nil.