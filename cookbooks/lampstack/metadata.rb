name             'lampstack'
maintainer       'EDR'
maintainer_email 'jdzialo@edrnet.com'
license          'All rights reserved'
description      'Installs/Configures lampstack'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "apache2"
depends "mysql"
depends "php"
depends "database"
depends "subversion"
