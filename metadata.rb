name             'arcgis'
maintainer       'Esri'
maintainer_email 'contracts@esri.com'
license          'Apache 2.0'
description      'Installs and configures ArcGIS'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.1.2'
#issues_url       'https://github.com/ArcGIS/arcgis-cookbook/issues'
#source_url       'https://github.com/ArcGIS/arcgis-cookbook'

depends          'hostsfile'
depends          'limits'
depends          'authbind'
depends          'iptables'
depends          'windows'
depends          'openssl'

recommends       'java'
recommends       'tomcat'

supports         'windows'
supports         'ubuntu'
supports         'redhat'

recipe 'arcgis::system', 'System requirements'
recipe 'arcgis::all_installed', 'Installs Server, Data Store, Portal, and Web Adaptors for Server and Portals'
recipe 'arcgis::iis', 'Enables required IIS features and configures HTTPS binding'
recipe 'arcgis::authbind', 'Configures authbind for tomcat user'
recipe 'arcgis::iptables', 'Configures ports for products'
recipe 'arcgis::server', 'Installs and configures ArcGIS Server'
recipe 'arcgis::server_wa', 'Installs Web Adaptor and configures it with ArcGIS Server'
recipe 'arcgis::portal', 'Installs and configures Portal for ArcGIS'
recipe 'arcgis::portal_wa', 'Installs Web Adaptor and configures it with Portal for ArcGIS'
recipe 'arcgis::portal_ha', 'Installs Web Adaptor and configures it with Portal for ArcGIS'
recipe 'arcgis::datastore', 'Installs and configures ArcGIS Data Store'
recipe 'arcgis::egdb', 'Registers GeoDatabases with server'
recipe 'arcgis::federation', 'Federates ArcGIS Server with Portal for ArcGIS'
recipe 'arcgis::desktop', 'Installs ArcGIS Desktop'
recipe 'arcgis::licensemanager', 'Installs ArcGIS License Manager'
recipe 'arcgis::fileserver', 'Configures shared directories on file server machine'