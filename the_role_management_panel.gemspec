# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'the_role_management_panel/version'

Gem::Specification.new do |spec|
  spec.name          = "the_role_management_panel"
  spec.version       = TheRoleManagementPanel::VERSION
  spec.authors       = ["Ilya N. Zykin"]
  spec.email         = ["zykin-ilya@ya.ru"]
  spec.summary       = %q{ TheRole Management panel }
  spec.description   = %q{ Management panel for TheRole on Bootstrap3 }
  spec.homepage      = "https://github.com/TheRole/TheRoleManagementPanel"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

  spec.add_dependency 'haml'
  spec.add_dependency 'the_notification'

  spec.add_dependency 'coffee-rails'
  spec.add_dependency 'rails', ['>= 3', '< 5']
end
