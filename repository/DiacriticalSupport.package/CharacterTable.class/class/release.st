dependencies
release
	" Undo the #initialize "

	Smalltalk at: #DiacriticalTable put: nil.
	Smalltalk at: #NonDiacriticalTable put: nil.
	^ self