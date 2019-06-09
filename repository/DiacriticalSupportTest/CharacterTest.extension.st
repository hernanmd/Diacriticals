Extension { #name : #CharacterTest }

{ #category : #'*DiacriticalSupportTest' }
CharacterTest >> testAsLowercaseWithoutDiatriticals [

	self assert: $Á asLowercaseWithoutDiatriticals equals: $a.
	self assert: $á asLowercaseWithoutDiatriticals equals: $a.

]

{ #category : #'*DiacriticalSupportTest' }
CharacterTest >> testAsNonDiacritical [

	self assert: $á asNonDiacritical equals: $a.
	self assert: $a asNonDiacritical equals: $a.

]

{ #category : #'*DiacriticalSupportTest' }
CharacterTest >> testIsDiacritical [

	self assert: $á isDiacritical.
	self deny: $a isDiacritical.
	self deny: $1 isDiacritical.
]

{ #category : #'*DiacriticalSupportTest' }
CharacterTest >> testNonDiacriticalValue [

	self assert: $á nonDiacriticalValue equals: 97.
	self assert: $a nonDiacriticalValue equals: 97.

]
