# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'server/version'

Gem::Specification.new do |spec|
  spec.name          = "erik_server"
  spec.version       = Server::VERSION
  spec.authors       = ["Erik Nilsen"]
  spec.email         = ["enilsen16@live.com"]
  spec.summary       = %q{A simple server}
  spec.description   = %q{A simple server made with ruby}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
