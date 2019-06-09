tests
testBuildDiacriticals

	self assert: (CharacterTable buildDiacriticals isKindOf: IdentityDictionary).
	self deny: CharacterTable buildDiacriticals isEmpty.
	self assert: (CharacterTable buildDiacriticals at: #acutes) equals: 'áéíóúÁÉÍÓÚ'.
	self assert: (CharacterTable buildDiacriticals at: #graves) equals: 'àìòÀÈÌÒÙ'.
	self assert: (CharacterTable buildDiacriticals at: #dieresis) equals: 'äëïöüÄËÏÖÜ'.
	self assert: (CharacterTable buildDiacriticals at: #circumflexes) equals: 'âêîôûÂÊÎÔÛ'.
	self assert: (CharacterTable buildDiacriticals at: #vowelTildes) equals: 'ãõÃÕ'.
	self assert: (CharacterTable buildDiacriticals at: #tildes) equals: 'ñÑ'.
	self assert: (CharacterTable buildDiacriticals at: #cedils) equals: 'çÇ'.
	self assert: (CharacterTable buildDiacriticals at: #slavics) equals: 'čďěňřšťůýžČĎĚŇŘŠŤŮÝŽ'.
