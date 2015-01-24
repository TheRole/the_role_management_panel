# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'the_role_bootstrap3_ui/version'

Gem::Specification.new do |spec|
  spec.name          = "the_role_bootstrap3_ui"
  spec.version       = TheRoleBootstrap3Ui::VERSION
  spec.authors       = ["Ilya N. Zykin"]
  spec.email         = ["zykin-ilya@ya.ru"]
  spec.summary       = %q{ Bootstrap3 views for TheRole }
  spec.description   = %q{ Bootstrap3 views for TheRole }
  spec.homepage      = "http://github.com/the-teacher"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

  spec.add_dependency 'haml'

  spec.add_runtime_dependency 'rails', ['>= 3', '< 5']
  spec.add_runtime_dependency 'coffee-rails','~>4.1.0'
end
