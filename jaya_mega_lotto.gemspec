# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jaya_mega_lotto/version'

Gem::Specification.new do |spec|
  spec.name          = "jaya_mega_lotto"
  spec.version       = JayaMegaLotto::VERSION
  spec.authors       = ["Jaya Wijono from Dot Kingdom"]
  spec.email         = ["jaya@hhd.com.au"]

  spec.summary       = "This is a test gem"
  spec.description   = "This is a tutorial on building a gem"
  spec.homepage      = "https://github.com/Jayzz55/jaya_mega_lotto"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
