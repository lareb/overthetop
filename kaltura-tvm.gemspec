# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = 'kaltura-tvm'
  gem.version       = '0.0.4'
  gem.authors       = ['Lareb Nawab']
  gem.license       = 'MIT'
  gem.email         = ['lareb.indore@gmail.com']
  gem.description   = %q{A native ruby gem for TVM API}
  gem.summary       = %q{A native ruby gem for TVM API}
  gem.homepage      = 'https://github.com/lareb/overthetop'

  gem.files         = Dir.glob('{lib}/**/*')
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'curb', '~> 0'
end
