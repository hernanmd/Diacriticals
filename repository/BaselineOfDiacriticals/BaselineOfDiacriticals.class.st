"
Add diacritic support for latin-alphabets to Pharo and Squeak. You can check for strings with diacritic characters such as accents, cedillas, umlauts, etc.

Package creator and maintainer: hernan.morales@gmail.com

"
Class {
	#name : #BaselineOfDiacriticals,
	#superclass : #BaselineOf,
	#category : #BaselineOfDiacriticals
}

{ #category : #baselines }
BaselineOfDiacriticals >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec postLoadDoIt: #postLoadAction.
		spec 
			package: 'DiacriticalSupport';
			package: 'DiacriticalSupportTest' with: [ spec requires: #(DiacriticalSupport) ].
		spec 
			group: 'Core' with: #('DiacriticalSupport');
			group: 'Tests' with: #('DiacriticalSupportTest') ].

]

{ #category : #doits }
BaselineOfDiacriticals >> postLoadAction [

	CharacterTable initialize.

]
