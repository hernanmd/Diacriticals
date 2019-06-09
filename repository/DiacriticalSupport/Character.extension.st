Extension { #name : #Character }

{ #category : #'*DiacriticalSupport' }
Character class >> accents [

	^ self diacriticalTable at: #all
]

{ #category : #'*DiacriticalSupport' }
Character class >> acutes [

	^ self diacriticalTable at: #acutes
]

{ #category : #'*DiacriticalSupport' }
Character >> asLowercaseWithoutDiatriticals [
	"Answer the receiver without accents, tides, converted to lowercase"

	^ self asNonDiacritical asLowercase
]

{ #category : #'*DiacriticalSupport' }
Character >> asNonDiacritical [
	"Answer the receiver without accents, tildes, and so"
	
	| idx |
	
	(idx := self class diacriticals indexOf: self) > 0
		ifTrue: [ ^ self class nonDiacriticals at: idx ].

]

{ #category : #'*DiacriticalSupport' }
Character class >> cedils [

	^ self diacriticalTable at: #cedils
]

{ #category : #'*DiacriticalSupport' }
Character class >> circumflexes [

	^ self diacriticalTable at: #circumflexes
]

{ #category : #'*DiacriticalSupport' }
Character class >> diacriticalTable [

	^ String diacriticalTable 
]

{ #category : #'*DiacriticalSupport' }
Character class >> diacriticals [

	^ self diacriticalTable at: #all
]

{ #category : #'*DiacriticalSupport' }
Character class >> diacriticalsAt: aSymbol [

	^ self diacriticalTable at: aSymbol
]

{ #category : #'*DiacriticalSupport' }
Character class >> dieresis [

	 ^ self diacriticalTable at: #dieresis
]

{ #category : #'*DiacriticalSupport' }
Character class >> graves [

	^ self diacriticalTable at: #graves
]

{ #category : #'*DiacriticalSupport' }
Character >> isDiacritical [
	" Answer <true> if receiver is a diacritical character "

	^ self class diacriticals includes: self
]

{ #category : #'*DiacriticalSupport' }
Character class >> noAcutes [

	^ self nonDiacriticalTable at: #acutes
]

{ #category : #'*DiacriticalSupport' }
Character class >> noCedils [

	^ self nonDiacriticalTable at:  #cedils
]

{ #category : #'*DiacriticalSupport' }
Character class >> noCircumflexes [

	^ self nonDiacriticalTable at:  #circumflexes
]

{ #category : #'*DiacriticalSupport' }
Character class >> noDieresis [

	^ self nonDiacriticalTable at:  #dieresis
]

{ #category : #'*DiacriticalSupport' }
Character class >> noGraves [

	^ self nonDiacriticalTable at:  #graves
]

{ #category : #'*DiacriticalSupport' }
Character class >> noTildes [

	^ self nonDiacriticalTable at:  #tildes
]

{ #category : #'*DiacriticalSupport' }
Character class >> nonDiacriticalTable [

	^ String nonDiacriticalTable 
]

{ #category : #'*DiacriticalSupport' }
Character >> nonDiacriticalValue [
	" Answer the receiver non diacritical ascii value "

	^ self asNonDiacritical asciiValue
]

{ #category : #'*DiacriticalSupport' }
Character class >> nonDiacriticals [

	 ^ self nonDiacriticalTable at: #all
]

{ #category : #'*DiacriticalSupport' }
Character class >> nonDiacriticalsAt: aSymbol [

	 ^ self nonDiacriticalTable at: aSymbol
]

{ #category : #'*DiacriticalSupport' }
Character class >> tildes [

	^ self diacriticalTable at: #tildes
]
