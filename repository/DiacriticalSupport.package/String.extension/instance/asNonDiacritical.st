*DiacriticalSupport
asNonDiacritical
	" Answer the receiver without diacriticals characters "

	self hasAnyDiacritical 
		ifTrue:[ ^ self collect: #asNonDiacritical ].
