======
chrony
======

Formula to set up and configure chrony

Available states
================

.. contents::
    :local:

``chrony``
----------

Installs the chrony package.

``chrony.config``
-----------------
This state manages the file ``chrony.conf`` under ``/etc`` (template found in "chrony/files"). The configuration is populated by values in "chrony/map.jinja", which are based on the package's default values (for RedHat and Debian family distributions), and are overridden by values of the same name in pillar.
