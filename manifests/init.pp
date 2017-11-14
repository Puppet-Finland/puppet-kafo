#
# == Class: kafo
#
# Install everything that's needed for using Kafo
#
# == Parameters
#
# [*gem_provider*]
#   Which Gem (package) provider to use. Valid values are 'gem' (default) and 
#   'puppet_gem'. Use the latter when you want to install gems compatible with 
#   Puppetlabs' official packages.
#
class kafo
(
    Enum['gem','puppet_gem'] $gem_provider = 'gem'
)
{

    package { 'rubygems':
        ensure => 'present',
    }

    $gems = [ 'kafo', 'rdoc', 'yard', 'puppet-strings', 'librarian-puppet' ]

    package { $gems:
        ensure   => 'present',
        provider => $gem_provider,
    }
}
