Extension { #name : #StringTest }

{ #category : #'*DiacriticalSupportTest' }
StringTest >> testAsNonDiacritical [
	self assert: 'canción' asNonDiacritical equals: 'cancion'.
	self assert: 'cancion' asNonDiacritical equals: 'cancion'.
	self assert: 'empêché' asNonDiacritical equals: 'empeche'.
	self
		assert: 'Příliš žluťoučký kůň úpěl ďábelské ódy' asNonDiacritical
		equals: 'Prilis zlutoucky kun upel dabelske ody'
]

{ #category : #'*DiacriticalSupportTest' }
StringTest >> testDiacriticalMatch [

	self assert: ('canción' diacriticalMatch: 'cancien') equals: 0.
	self assert: ('cancien' diacriticalMatch: 'canción') equals: 0.
	self assert: ('canción' diacriticalMatch: 'cancion') equals: 1.
	self assert: ('cancion' diacriticalMatch: 'canción') equals: 1.
	self assert: ('cánción' diacriticalMatch: 'canción') equals: 1.
	self assert: ('cancion' diacriticalMatch: 'cancion') equals: 0.
	self assert: ('empêché' diacriticalMatch: 'empeche') equals: 2
]

{ #category : #'*DiacriticalSupportTest' }
StringTest >> testHasAnyDiacritical [

	self deny: 'cancion' hasAnyDiacritical.
	self assert: 'canción' hasAnyDiacritical.
	self assert: 'ó' hasAnyDiacritical.	
	self assert: 'garçon' hasAnyDiacritical.
	self assert: 'empêché' hasAnyDiacritical.
	self assert: 'avant-goût' hasAnyDiacritical.	
	self assert: 'añora' hasAnyDiacritical.

]

{ #category : #'*DiacriticalSupportTest' }
StringTest >> testIsDiacriticalEquivalentOf [

	self deny: ('canción' isDiacriticalEquivalentOf: 'cancien').
	self assert: ('canción' isDiacriticalEquivalentOf: 'cancion').
	self deny: ('canción' isDiacriticalEquivalentOf: 'canción').
	self assert: ('cancion' isDiacriticalEquivalentOf: 'canción')


]
