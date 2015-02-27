*DiacriticalSupport
asNonDiacritical
	"Answer the receiver without accents, tildes, and so"
	
	| idx |
	
	(idx := self class diacriticals indexOf: self) > 0
		ifTrue: [ ^ self class nonDiacriticals at: idx ].
