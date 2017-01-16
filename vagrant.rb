## The homebrew_cask module has a current limitation that does not allow for Ruby files placed at URLs to be pulled down
## Since homebrew cask directly supports this, need to submit a request to fix that behavior till this works externally

cask 'vagrant' do
  version '1.8.0'
  sha256 'cfc63e433c9aef61384175b263dea081f8b570b6a3e69edd0b77c47c96dce84d'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}.dmg"
  name 'Vagrant'
  homepage 'https://www.vagrantup.com/'
  license :mit

  pkg 'Vagrant.pkg'

  uninstall :script => { :executable => 'uninstall.tool', :input => %w[Yes] },
            :pkgutil => 'com.vagrant.vagrant'
end
