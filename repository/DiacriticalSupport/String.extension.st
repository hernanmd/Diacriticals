Extension { #name : #String }

{ #category : #'*DiacriticalSupport' }
String >> asNonDiacritical [
	" Answer the receiver without diacriticals characters "

	self hasAnyDiacritical 
		ifTrue:[ ^ self collect: #asNonDiacritical ].

]

{ #category : #'*DiacriticalSupport' }
String >> diacriticalMatch: aString [
	" Answer a <Number> of diacritical matches between the receiver and aString (same position and 'same' character) "

	| diacriticals |
	
	diacriticals := 0.
	(self hasAnyDiacritical or: [ aString hasAnyDiacritical ])
		ifTrue: [ (self isDiacriticalEquivalentOf: aString)
					ifTrue: [ diacriticals := ((self select: #isDiacritical) size - (aString select: #isDiacritical) size) abs ]
					ifFalse: [ 1 to: (self size min: aString size) do: [ : i | 
								(self at: i) asNonDiacritical = (aString at: i) asNonDiacritical
									ifTrue: [ (((self at: i) isDiacritical and: [ (aString at: i) isDiacritical not ])
												or: [ (self at: i) isDiacritical not and: [ (aString at: i) isDiacritical ] ])
													ifTrue: [ diacriticals := diacriticals + 1 ] ]	 ] ] ].
	^ diacriticals
			
		
]

{ #category : #'*DiacriticalSupport' }
String class >> diacriticalTable [
	" Answer the table of diacritical characters "

	^ (Smalltalk at: #DiacriticalTable)
		ifNil: [ 
			CharacterTable initialize.
			(Smalltalk at: #DiacriticalTable) ]
		ifNotNil: [ : dt | dt ]
]

{ #category : #'*DiacriticalSupport' }
String >> hasAnyDiacritical [
	" Answer <true> if the receiver contains any diacritical character. "

	 ^ (self class diacriticalTable at: #all) includesAnyOf: self
]

{ #category : #'*DiacriticalSupport' }
String >> isDiacriticalEquivalentOf: aString [
	" Answer <true> if receiver has a diacritical character equivalent (i.e. $á of $a, $é of $e) in aString. "
	
	^ self ~= aString and: [ self asNonDiacritical = aString asNonDiacritical ]


]

{ #category : #'*DiacriticalSupport' }
String class >> nonDiacriticalTable [
	" Answer the table of non diacritical characters "

	^ (Smalltalk at: #NonDiacriticalTable)
		ifNil: [ 
			CharacterTable initialize.
			(Smalltalk at: #NonDiacriticalTable) ]
		ifNotNil: [ : dt | dt ]
]

{ #category : #'*DiacriticalSupport' }
String class >> vowels [

	^ 'aeiouAEIOU'
]
