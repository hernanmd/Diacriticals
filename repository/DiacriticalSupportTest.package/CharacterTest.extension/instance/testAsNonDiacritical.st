*DiacriticalSupportTest
testAsNonDiacritical

	self assert: $á asNonDiacritical equals: $a.
	self assert: $a asNonDiacritical equals: $a.
