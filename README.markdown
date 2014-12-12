#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with jboss](#setup)
    * [What jboss affects](#what-jboss-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with jboss](#beginning-with-jboss)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

This module is under development. Please do not use it yet.
## Module Description

This module will install Jboss 6 on RHEL 5 or 6. Jboss is a mean beast so I'm starting with a limited installation for now but will expand later.

## Setup

### What jboss affects

* A list of files, packages, services, or operations that the module will alter, impact, or execute on the system it's installed on.
* This is a great place to stick any warnings.
* Can be in list or paragraph form.

### Setup Requirements

If you are installing JBoss using the RPM method, you'll need to subscribe the target node(s) to the proper channel. If you are using zip, I recommend creating a fileserver using fileserver.conf and storing the zip file in that location from access.redhat.com.

### Beginning with jboss

The very basic steps needed for a user to get the module up and running.

If your most recent release breaks compatibility or requires particular steps for upgrading, you may wish to include an additional section here: Upgrading (For an example, see http://forge.puppetlabs.com/puppetlabs/firewall).

## Usage

class { 'jboss':
  version => '6.1.1',
  install_method => 'zip',
  install_src = 'puppet://mount/profile/jboss_eap.zip',
}

## Reference

Here, list the classes, types, providers, facts, etc contained in your module. This section should include all of the under-the-hood workings of your module so people know what the module is touching on their system but don't need to mess with things. (We are working on automating this section!)

## Limitations

RedHat Enterprise Linux v. 5 or 6.

## Development

Pull requests encouraged!
