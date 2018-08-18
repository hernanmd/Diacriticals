class initialization
addAllDiacriticals: table	
	
	table at: #all put: (String streamContents: [ : stream | 
		stream 
			nextPutAll: (table at: #dieresis);
			nextPutAll: (table at: #tildes);
			nextPutAll: (table at: #acutes);				
			nextPutAll: (table at: #vowelTildes);				
			nextPutAll: (table at: #graves);
			nextPutAll: (table at: #cedils);
			nextPutAll: (table at: #circumflexes);
			nextPutAll: (table at: #slavics)  ])