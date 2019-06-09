*DiacriticalSupportTest
testIsDiacritical

	self assert: $á isDiacritical.
	self deny: $a isDiacritical.
	self deny: $1 isDiacritical.