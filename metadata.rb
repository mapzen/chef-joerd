name             'joerd'
maintainer       'mapzen'
maintainer_email 'matt.amos@mapzen.com'
license          'GPL v3'
description      'Installs/Configures joerd'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.2'

recipe 'joerd', 'Installs joerd'

%w(
  apt
  git
  runit
  user
).each do |dep|
  depends dep
end

%w(ubuntu).each do |os|
  supports os
end
