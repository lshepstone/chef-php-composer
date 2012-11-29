Description
===========

Installs [Composer](http://getcomposer.org/) according to the documented [global install instructions](http://getcomposer.org/doc/00-intro.md#globally).

Requirements
============

Cookbooks
---------

* php - https://github.com/opscode-cookbooks/php

Attributes
==========

* `node['composer']['url']` - URL to the Composer installer script.
* `node['composer']['path']` - path of the installed Composer command.