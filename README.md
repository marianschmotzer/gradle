# puppetmaster

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with puppetmaster](#setup)
    * [What puppetmaster affects](#what-puppetmaster-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with puppetmaster](#beginning-with-puppetmaster)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

Downloads and installs gradle.

## Usage

Example of usage:

class {'gradle':
  version =>  '3.3'
}

### Parameters

[*version*]
Version of gradle to install

[*install_dir]
directory to install gradle too

[*download_url]
url to download gradle from




## Limitations

Tested only on Debian 8, but is really simple so should work on the rest of linuxes. 

## Development

Since your module is awesome, other users will want to play with it. Let them
know what the ground rules for contributing are.

## Release Notes/Contributors/Etc **Optional**

If you aren't using changelog, put your release notes here (though you should
consider using changelog). You may also add any additional sections you feel are
necessary or important to include here. Please use the `## ` header.
