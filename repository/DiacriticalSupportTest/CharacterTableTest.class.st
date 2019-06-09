Class {
	#name : #CharacterTableTest,
	#superclass : #TestCase,
	#category : 'DiacriticalSupportTest'
}

{ #category : #tests }
CharacterTableTest >> testAddAllDiacriticals [

	self assert: (CharacterTable addAllDiacriticals: CharacterTable buildDiacriticals) equals: CharacterTable.

]

{ #category : #tests }
CharacterTableTest >> testBuildDiacriticals [

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

]

{ #category : #tests }
CharacterTableTest >> testBuildNonDiacriticals [

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

]

{ #category : #tests }
CharacterTableTest >> testInitialize [

	self assert: (CharacterTable initialize isKindOf: CharacterTable class).
	self deny: (Smalltalk at: #DiacriticalTable) equals: nil.
	self deny: (Smalltalk at: #NonDiacriticalTable) equals: nil.
]

{ #category : #tests }
CharacterTableTest >> testPlatformGlobal [

	self assert: (CharacterTable platformGlobal isKindOf: IdentityDictionary).
	self deny: CharacterTable platformGlobal isEmpty.


]

{ #category : #tests }
CharacterTableTest >> testRelease [

	self assert: (CharacterTable release isKindOf: CharacterTable class).
	self assert: (Smalltalk at: #DiacriticalTable) equals: nil.
	self assert: (Smalltalk at: #NonDiacriticalTable) equals: nil.
]
