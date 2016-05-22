# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'edimax_dhcp_status/version'

Gem::Specification.new do |spec|
  spec.name          = 'edimax_dhcp_status'
  spec.version       = EdimaxDhcpStatus::VERSION
  spec.authors       = ['Oleg Antonyan']
  spec.email         = ['oleg.b.antonyan@gmail.com']

  spec.summary       = 'Gets active DHCP clients of Edimax BR6428n router'
  spec.homepage      = 'https://github.com/olegantonyan/edimax_dhcp_status'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'capybara'
  spec.add_dependency 'poltergeist'

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
