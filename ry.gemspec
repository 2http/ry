# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ry/version'

Gem::Specification.new do |spec|
  spec.name          = "ry"
  spec.license       = "mit"
  spec.version       = Ry::VERSION
  spec.authors       = ["Juha Suuraho", "Matti Paksula"]
  spec.email         = ["juha.suuraho@enemy.fi", "matti.paksula@enemy.fi"]

  spec.summary       = %q{ry (railyard) is a CLI for managing projects with multiple microservices.}
  spec.homepage      = "https://github.com/2http/ry"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency('rdoc')
  spec.add_development_dependency('aruba')
  spec.add_development_dependency('rake')
  spec.add_development_dependency('test-unit')
  spec.add_development_dependency('rspec', '~> 3')

  spec.add_dependency('methadone-rehab', '~> 1.9.1')
end
