"
A CharacterTable is a class for initializing the diacritical tables without modifying String class.

CharacterTable release. CharacterTable

"
Class {
	#name : #CharacterTable,
	#superclass : #Object,
	#classInstVars : [
		'instance'
	],
	#category : 'DiacriticalSupport-Core'
}

{ #category : #'class initialization' }
CharacterTable class >> addAllDiacriticals: table [	
	
	table at: #all put: (String streamContents: [ : stream | 
		stream 
			nextPutAll: (table at: #dieresis);
			nextPutAll: (table at: #tildes);
			nextPutAll: (table at: #acutes);				
			nextPutAll: (table at: #vowelTildes);				
			nextPutAll: (table at: #graves);
			nextPutAll: (table at: #cedils);
			nextPutAll: (table at: #circumflexes);
			nextPutAll: (table at: #slavics)  ])
]

{ #category : #'class initialization' }
CharacterTable class >> buildDiacriticals [
	" Private - Build mappings for different alphabets and systems "

	^ IdentityDictionary new
		at: #acutes put: 'áéíóúÁÉÍÓÚ'; " Alt + : 0225 - 0233 - 0237 - 0243 - 0250 - 0193 - 0201 - 0205 - 0211 - 0218 "
		at: #graves put: 'àìòÀÈÌÒÙ'; 	" Alt + : 0224 - 0232 - 0236 - 0242 - 0249 - 0192 - 0200 - 0204 - 0210 - 0217 "
		at: #dieresis put: 'äëïöüÄËÏÖÜ'; " Alt + : 0228 - 0235 - 0239 - 0246 - 0252 - - 0203 - - - "
		at: #circumflexes put: 'âêîôûÂÊÎÔÛ';
		at: #vowelTildes put: 'ãõÃÕ';
		at: #tildes put: 'ñÑ';
		at: #cedils put: 'çÇ';
		at: #slavics put: 'čďěňřšťůýžČĎĚŇŘŠŤŮÝŽ';
		yourself
]

{ #category : #'class initialization' }
CharacterTable class >> buildNonDiacriticals [
	" Private - Build mappings for different alphabets and systems "
	
	^ IdentityDictionary new
		at: #acutes put: String vowels;
		at: #graves   put: String vowels;
		at: #dieresis put: String vowels;
		at: #circumflexes put: String vowels;
		at: #vowelTildes put: 'aoAO';
		at: #tildes put: 'nN';
		at: #cedils put: 'cC';
		at: #slavics put: 'cdenrstuyzCDENRSTUYZ';			
		at: #all put: 'aeiouAEIOUnNaeiouAEIOUaoAOaeiouAEIOUcCaeiouAEIOUcdenrstuyzCDENRSTUYZ';
		yourself 
]

{ #category : #'class initialization' }
CharacterTable class >> initialize [
	" Private - Initialize table for diacritical characters.
	self initialize  "

	|  table |

	table := self buildDiacriticals. 
	self platformGlobal at: #DiacriticalTable put: table.
	self addAllDiacriticals: table.
	self platformGlobal at: #NonDiacriticalTable put: self buildNonDiacriticals.
	^ self
]

{ #category : #'class initialization' }
CharacterTable class >> platformGlobal [

	" GemStone guard "
	^ SystemDictionary allInstances first
]

{ #category : #dependencies }
CharacterTable class >> release [
	" Undo the #initialize "

	Smalltalk at: #DiacriticalTable put: nil.
	Smalltalk at: #NonDiacriticalTable put: nil.
	^ self
]
