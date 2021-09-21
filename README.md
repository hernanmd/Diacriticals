# Description

Adds diacritical support for Pharo and Squeak Smalltalk.

# Installation

## From CLI

```bash
pi install Diacriticals
```

## From Pharo

[//]: # (pi)
```smalltalk
EpMonitor disableDuring: [ 
    Metacello new
      onWarningLog;
      repository: 'github://hernanmd/Diacriticals/repository';
      baseline: 'Diacriticals';
      load ].
```

## Install recipe for Baseline

If you want to add the ISO3166 to your Metacello Baselines or Configurations, copy and paste the following expression:

```smalltalk
	" ... "
	spec
		baseline: 'Diacriticals' 
		with: [ spec repository: 'github://hernanmd/Diacriticals/repository' ];
	" ... "
```

# Usage examples

Find if a String contains any diacritical character:

```smalltalk
'cancion' hasAnyDiacritical. ----> false
'canción' hasAnyDiacritical. ----> true
'á' hasAnyDiacritical. ----> true
'garçon' hasAnyDiacritical. ----> true
```

Find if a String is "diacritical equivalent" of another one:

```smalltalk
'canción' isDiacriticalEquivalentOf: 'cancien' ----> false
'cancion' isDiacriticalEquivalentOf: 'canción' ----> true
```

Find how many diacritical "replacements" are between two Strings:

```smalltalk
'canción' diacriticalMatch: 'cancien' ----> 0.
'canción' diacriticalMatch: 'cancion' ----> 1.
'empêché' diacriticalMatch: 'empeche' ----> 2.
```
