*DiacriticalSupport
asDiacritical: diacriticalSymbolName
	"Answer the receiver with accents, tildes, and so"
	
	| idx |
	
	( idx := ( self class nonDiacriticalsAt: diacriticalSymbolName ) indexOf: self) > 0
		ifTrue: [ ^ ( self class diacriticalsAt: diacriticalSymbolName ) at: idx ].