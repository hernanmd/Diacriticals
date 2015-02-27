class initialization
initialize
	" Private - Initialize table for diacritical characters.
	self initialize  "

	| all table |

	table := IdentityDictionary new. 
	self platformGlobal at: #DiacriticalTable put: (table
		  at: #acutes put: 'áéíóúÁÉÍÓÚ'; " Alt + : 0225 - 0233 - 0237 - 0243 - 0250 - 0193 - 0201 - 0205 - 0211 - 0218 "
		  at: #graves put: 'àìòÀÈÌÒÙ'; 	" Alt + : 0224 - 0232 - 0236 - 0242 - 0249 - 0192 - 0200 - 0204 - 0210 - 0217 "
		  at: #dieresis put: 'äëïöüÄËÏÖÜ'; " Alt + : 0228 - 0235 - 0239 - 0246 - 0252 - - 0203 - - - "
		  at: #circumflexes put: 'âêîôûÂÊÎÔÛ';
		  at: #vowelTildes put: 'ãõÃÕ';
		  at: #tildes put: 'ñÑ';
		  at: #cedils put: 'çÇ';
		yourself).
	all := String streamContents: [: stream | 
		stream nextPutAll: ( table at: #dieresis );
				nextPutAll: ( table at: #tildes );
				nextPutAll: ( table at: #acutes );				
				nextPutAll: ( table at: #vowelTildes );				
				nextPutAll: ( table at: #graves );
				nextPutAll: ( table at: #cedils );
				nextPutAll: ( table at: #circumflexes )
		].
	table at: #all put: all.
		
	self platformGlobal at: #NonDiacriticalTable put: (IdentityDictionary new
		at: #acutes put: String vowels;
		at: #graves   put: String vowels;
		at: #dieresis put: String vowels;
		at: #circumflexes put: String vowels;
		at: #vowelTildes put: 'aoAO';
		at: #tildes put: 'nN';
		at: #cedils put: 'cC';
		at: #all put: 'aeiouAEIOUnNaeiouAEIOUaoAOaeiouAEIOUcCaeiouAEIOU';
		yourself ).
		
	^ self