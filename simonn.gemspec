# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simonn/version'

Gem::Specification.new do |spec|
  spec.name          = "simonn"
  spec.version       = Simonn::VERSION
  spec.authors       = ["ElliottAYoung"]
  spec.email         = ["elliott.a.young@gmail.com"]

  spec.summary       = "A simplified interface for ActiveRecord - designed to allow business users simplified DB access and control"
  spec.description   =
  spec.homepage      = "https://github.com/ElliottAYoung/SIMONN"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = ["simonn"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
