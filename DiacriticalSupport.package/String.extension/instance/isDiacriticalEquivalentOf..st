*DiacriticalSupport
isDiacriticalEquivalentOf: aString
	" Answer <true> if receiver has a diacritical
	character equivalent (i.e. $á of $a, $é of $e) in aString. "
	
	^ self ~= aString and: [ self asNonDiacritical = aString asNonDiacritical ]

