# unknown mime  #

![unknown mime](mime.jpg)

Photo by [jyjou](http://www.flickr.com/photos/60886174@N02/5549882707/)

[![Build Status](https://travis-ci.org/weirdpercent/unknown-mime.png?branch=master)](https://travis-ci.org/weirdpercent/unknown-mime)[![Dependency Status](https://gemnasium.com/weirdpercent/unknown-mime.png)](https://gemnasium.com/weirdpercent/unknown-mime)

unknown mime is a simple ruby admin script to fix the **Unknown media type in type 'xxx/xxx'** messages seen when running Linux package updates or the
**update-mime-database** command. This script simply cleans all 'fake' mimetypes. If the messages reappear, simply run this script again.

## Usage ##

Just run 'sudo rake' and enter the root password.

**NOTE:** For security purposes, it is always wise to review what a piece of code does **BEFORE** running it with superuser privileges.
Examine mime.rb and Rakefile to see that no malicious commands are run.

## Gratitude ##
Credit for this fix goes to http://www.garyshood.com/unknownmedia/
