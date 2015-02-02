# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dummy_magick/version'

Gem::Specification.new do |spec|
  spec.name          = 'dummy_magick'
  spec.version       = DummyMagick::VERSION
  spec.authors       = ['unosk']
  spec.email         = ['unosk.s@gmail.com']
  spec.summary       = 'Generate a dummy image file for development'
  spec.description   = 'Generate a dummy image file for development'
  spec.homepage      = 'https://github.com/unosk/dummy_magick'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'mini_magick'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'yard'
end
