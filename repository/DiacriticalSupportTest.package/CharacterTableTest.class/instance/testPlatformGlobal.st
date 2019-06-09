tests
testPlatformGlobal

	self assert: (CharacterTable platformGlobal isKindOf: IdentityDictionary).
	self deny: CharacterTable platformGlobal isEmpty.

