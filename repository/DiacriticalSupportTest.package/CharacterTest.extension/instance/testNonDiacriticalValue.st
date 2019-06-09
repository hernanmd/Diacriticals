*DiacriticalSupportTest
testNonDiacriticalValue

	self assert: $á nonDiacriticalValue equals: 97.
	self assert: $a nonDiacriticalValue equals: 97.
