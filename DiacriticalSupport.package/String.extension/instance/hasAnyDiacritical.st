*DiacriticalSupport
hasAnyDiacritical
	" Answer <true> if the receiver contains
	any diacritical character. "

	 ^ (self class diacriticalTable at: #all) includesAnyOf: self