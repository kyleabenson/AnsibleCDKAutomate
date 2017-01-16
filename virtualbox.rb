cask 'virtualbox' do
 # The Red Hat CDK specifically requires version 5.0.26 -- VirtualBox has not maintained consistent versioning, and uses deprecated commands in their cask files
 # so this file is provided locally.
  version '5.0.26-108824'
  sha256 'e8836a98adea9350917a41e754dfec4fe2df7c4a0224fd8beca72cbc5d778437'


  url "http://download.virtualbox.org/virtualbox/#{version.sub(%r{-.*}, '')}/VirtualBox-#{version}-OSX.dmg"
  name 'Oracle VirtualBox'
  homepage 'https://www.virtualbox.org'
  license :gpl

  auto_updates true

  pkg 'VirtualBox.pkg'

  uninstall script:  { executable: 'VirtualBox_Uninstall.tool', args: %w[--unattended] },
            pkgutil: 'org.virtualbox.pkg.*'

  zap delete: [
                '/Library/Application Support/VirtualBox',
                '~/Library/VirtualBox',
              ],
      rmdir:  '~/VirtualBox VMs'
end
