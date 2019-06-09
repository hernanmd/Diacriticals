tests
testBuildNonDiacriticals

	self assert: (CharacterTable buildNonDiacriticals isKindOf: IdentityDictionary).
	self deny: CharacterTable buildNonDiacriticals isEmpty.
	self assert: (CharacterTable buildNonDiacriticals at: #acutes) equals: String vowels.
	self assert: (CharacterTable buildNonDiacriticals at: #graves) equals: String vowels.
	self assert: (CharacterTable buildNonDiacriticals at: #dieresis) equals: String vowels.
	self assert: (CharacterTable buildNonDiacriticals at: #circumflexes) equals: String vowels.
	self assert: (CharacterTable buildNonDiacriticals at: #vowelTildes) equals: 'aoAO'.
	self assert: (CharacterTable buildNonDiacriticals at: #tildes) equals: 'nN'.
	self assert: (CharacterTable buildNonDiacriticals at: #cedils) equals: 'cC'.
	self assert: (CharacterTable buildNonDiacriticals at: #slavics) equals: 'cdenrstuyzCDENRSTUYZ'.
	self assert: (CharacterTable buildNonDiacriticals at: #all) equals: 'aeiouAEIOUnNaeiouAEIOUaoAOaeiouAEIOUcCaeiouAEIOUcdenrstuyzCDENRSTUYZ'.
