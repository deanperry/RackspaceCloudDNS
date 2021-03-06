# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rackspace_cloud_dns/version'

Gem::Specification.new do |spec|
  spec.name          = "rackspace_cloud_dns"
  spec.version       = RackspaceCloudDns::VERSION
  spec.authors       = ["Dean Perry"]
  spec.email         = ["dean@deanperry.net"]
  spec.description   = %q{Rubygem to interact with the Rackspace Cloud DNS API}
  spec.summary       = %q{Rackspace Cloud DNS API Gem}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
