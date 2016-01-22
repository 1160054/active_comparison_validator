# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_comparison_validator/version'

Gem::Specification.new do |spec|
  spec.name          = "active_comparison_validator"
  spec.version       = ActiveComparisonValidator::VERSION
  spec.authors       = ["onodera"]
  spec.email         = ["s1160054@gmail.com"]

  spec.summary       = %q{Dynamically add validation for compare the column and the other column.}
  spec.description   = %q{This gem provides a macro for comparing the column and the other column of the record. Type of the comparable column is Date Time Numeric, and all that jazz.}
  spec.homepage      = "https://github.com/s1160054/active_comparison_validator"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  #end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rails"
end
