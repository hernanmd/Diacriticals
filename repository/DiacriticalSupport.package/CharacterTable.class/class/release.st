class initialization
release
	" Undo the #initialize "

	Smalltalk at: #DiacriticalTable put: nil.
	Smalltalk removeKey: #DiacriticalTable.
	
	Smalltalk at: #NonDiacriticalTable put: nil.
	Smalltalk removeKey: #NonDiacriticalTable.
	^ self