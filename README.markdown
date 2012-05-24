# EScript extensions - do not use

Some extensions for the EPrints EScript language.

## Warning

Do not use this - it does not work as a plug in (causes EPrints to crash on
restart). You can copy the functions directly into the Compiled file, but they
will be overwritten by EPrints updates.

## Background

We wanted to edit how author names are output throughout EPrints (stripping the
punctuation from the given name). Normally output definitions are edited in
the citations file. Although there is an output language provided by EPrints,
EScript, its functionality is limited and provides few tools for
transformation of content.

I decided to see if it would be possible to provide this functionality through
plug ins. It is, although it does require a slight kludge, which is
essentially re-opening the package that defines the EScript functions and
adding new definitions to it. See any of the scripts included for an example.

## Installation

Copy the plug in to the Plugin/Script directory in your archive then restart
EPrints. e.g.

```bash
$ cd $EPRINTS_ROOT
$ SCRIPT_DIR=archives/$MY_ARCHIVE/cfg/plugins/EPrints/Plugin/Script
$ mkdir -p $SCRIPT_DIR
$ cp $EXTENSION_FILE $SCRIPT_DIR
$ sudo apache2ctl restart
```
