# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$:.unshift(lib) unless $:.include?(lib)
require 'nest/cli/version'

Gem::Specification.new do |spec|
  spec.name          = 'nest-cli'
  spec.version       = Nest::Cli::VERSION
  spec.authors       = ['Morgan Lieberthal']
  spec.email         = ['morgan@jmorgan.org']

  spec.summary       = 'A CLI application to control Nest Devices'
  spec.homepage      = 'https://github.com/baberthal/nest-cli'
  spec.license       = 'MIT'

  spec.files         = %x(git ls-files -z).split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'firebase', '~> 0.2'

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
