*DiacriticalSupport
diacriticalMatch: aString
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
			
		