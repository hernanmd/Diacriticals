class initialization
buildNonDiacriticals
	" Private - Build mappings for different alphabets and systems "
	
	^ IdentityDictionary new
		at: #acutes put: String vowels;
		at: #graves   put: String vowels;
		at: #dieresis put: String vowels;
		at: #circumflexes put: String vowels;
		at: #vowelTildes put: 'aoAO';
		at: #tildes put: 'nN';
		at: #cedils put: 'cC';
		at: #slavics put: 'cdenrstuyzCDENRSTUYZ';			
		at: #all put: 'aeiouAEIOUnNaeiouAEIOUaoAOaeiouAEIOUcCaeiouAEIOUcdenrstuyzCDENRSTUYZ';
		yourself 