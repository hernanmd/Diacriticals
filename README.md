# Description

Adds diacritical support for Pharo and Squeak Smalltalk

# Installation

## From CLI

```bash
pi install Diacriticals
```

## From Pharo

[//]: # (pi)
```smalltalk
[
    EpMonitor current disable.
    Metacello new
      onWarningLog;
      repository: 'github://hernanmd/Diacriticals/repository';
      baseline: 'Diacriticals';
      load.
] 
ensure: [ EpMonitor current enable ].
```

