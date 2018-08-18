class initialization
buildDiacriticals
	" Private - Build mappings for different alphabets and systems "

	^ IdentityDictionary new
		at: #acutes put: 'áéíóúÁÉÍÓÚ'; " Alt + : 0225 - 0233 - 0237 - 0243 - 0250 - 0193 - 0201 - 0205 - 0211 - 0218 "
		at: #graves put: 'àìòÀÈÌÒÙ'; 	" Alt + : 0224 - 0232 - 0236 - 0242 - 0249 - 0192 - 0200 - 0204 - 0210 - 0217 "
		at: #dieresis put: 'äëïöüÄËÏÖÜ'; " Alt + : 0228 - 0235 - 0239 - 0246 - 0252 - - 0203 - - - "
		at: #circumflexes put: 'âêîôûÂÊÎÔÛ';
		at: #vowelTildes put: 'ãõÃÕ';
		at: #tildes put: 'ñÑ';
		at: #cedils put: 'çÇ';
		at: #slavics put: 'čďěňřšťůýžČĎĚŇŘŠŤŮÝŽ';
		yourself