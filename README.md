# puppetmaster

#### Table of Contents

1. [Overview](#overview)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)

## Overview

Downloads and installs gradle.

## Usage

Example of usage:
```
class {'gradle':
  version =>  '3.3'
}
```

### Parameters

#### `version`
Version of gradle to install

#### `install_dir`
directory to install gradle too

#### `download_url`
url to download gradle from

## Limitations

Tested only on Debian 8, but is really simple so should work on the rest of linuxes. 

