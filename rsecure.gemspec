# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rsecure/version'

Gem::Specification.new do |spec|
  spec.name          = 'rsecure'
  spec.version       = Rsecure::VERSION
  spec.authors       = ['Ahmad Hassan']
  spec.email         = ['er.ahmad.hassan@gmail.com']

  spec.summary       = 'A simple consolidated ruby authentication & authorization solution.'
  spec.description   = 'Simple authentication & authorization solution for Ruby apps.'
  spec.homepage      = 'https://github.com/ahmadhasankhan/rsecure'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.1.0'
  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
end
