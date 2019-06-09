*DiacriticalSupportTest
testAsLowercaseWithoutDiatriticals

	self assert: $Á asLowercaseWithoutDiatriticals equals: $a.
	self assert: $á asLowercaseWithoutDiatriticals equals: $a.
