# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'process_runner/version'

Gem::Specification.new do |spec|
  spec.name          = "process_runner"
  spec.version       = ProcessRunner::VERSION
  spec.authors       = ["Dustin Morrill"]
  spec.email         = ["dmorrill10@gmail.com"]
  spec.description   = %q{Extremely tiny Ruby gem to asynchronously start independent processes.}
  spec.summary       = %q{Extremely tiny Ruby gem to asynchronously start independent processes.}
  spec.homepage      = "https://github.com/dmorrill10/process_runner"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
