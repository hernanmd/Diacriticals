tests
testAddAllDiacriticals

	self assert: (CharacterTable addAllDiacriticals: CharacterTable buildDiacriticals) equals: CharacterTable.
