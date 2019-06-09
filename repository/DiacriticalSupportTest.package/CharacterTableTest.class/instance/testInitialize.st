tests
testInitialize

	self assert: (CharacterTable initialize isKindOf: CharacterTable class).
	self deny: (Smalltalk at: #DiacriticalTable) equals: nil.
	self deny: (Smalltalk at: #NonDiacriticalTable) equals: nil.