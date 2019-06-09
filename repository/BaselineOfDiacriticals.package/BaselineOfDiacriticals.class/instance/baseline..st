baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec 
			package: 'DiacriticalSupport';
			package: 'DiacriticalSupportTest'. 
			
		spec 
			group: 'Core' with: #('DiacriticalSupport');
			group: 'Tests' with: #('DiacriticalSupportTest') ].
