# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fidor_schema_version'

Gem::Specification.new do |spec|
  spec.name = 'fidor_schema'
  spec.version = Fidor::Schema::VERSION
  spec.authors = ['Georg Leciejewski']
  spec.email = 'dev@fidor.de'
  spec.summary = 'DEPRECATED'
  spec.description = %q{The fidor_schema gem is deprecated and will soon be removed. Please don't relay on the JSon schemas provided with this gem!!!}
  spec.homepage = 'https://github.com/fidor/fidor_schema'
  spec.license = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject{|i| i[/^docs\//] }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'activesupport'
  spec.add_development_dependency 'json_schema_tools', '>=0.6.1'
  spec.add_development_dependency 'activemodel' # required by above
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'json_schema_validator'

end
