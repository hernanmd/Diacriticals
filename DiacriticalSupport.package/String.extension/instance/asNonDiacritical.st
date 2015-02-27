*DiacriticalSupport
asNonDiacritical
	" Answer the receiver converted without
	diacriticals characters "

	self hasAnyDiacritical 
		ifTrue:[ ^ self collect: [:each | each asNonDiacritical ] ].
