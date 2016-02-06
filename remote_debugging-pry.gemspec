# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'remote_debugging/pry/version'

Gem::Specification.new do |spec|
  spec.name          = "remote_debugging-pry"
  spec.version       = RemoteDebugging::Pry::VERSION
  spec.authors       = ["Philipp Tessenow"]
  spec.email         = ["philipp@tessenow.org"]

  spec.summary       = %q{Extends the remote_debugging gem to make it answer to debug requests.}
  spec.description   = %q{Extends the remote_debugging gem to make it answer to debug requests.}
  spec.homepage      = "https://github.com/remote-debugging/remote_debugging-pry"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # spec.add_runtime_dependency 'remote_debugging'
  spec.add_runtime_dependency 'byebug'
  spec.add_runtime_dependency 'pry-byebug'
  spec.add_runtime_dependency 'pry-doc'

  # todo: evaluate if we need those gems or do their stuff ourselfes
  # gem 'pry-rails'
  # gem 'pry-rescue'
  # gem 'pry-stack_explorer'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
