class initialization
initialize
	" Private - Initialize table for diacritical characters.
	self initialize  "

	|  table |

	table := self buildDiacriticals. 
	self platformGlobal at: #DiacriticalTable put: table.
	self addAllDiacriticals: table.
	self platformGlobal at: #NonDiacriticalTable put: self buildNonDiacriticals.
	^ self