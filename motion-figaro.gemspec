# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'motion/figaro/version'

Gem::Specification.new do |spec|
  spec.name          = "motion-figaro"
  spec.version       = Motion::Figaro::VERSION
  spec.authors       = ["Bodacious"]
  spec.email         = ["bodacious@katanacode.com"]

  spec.summary       = %q{Simple RubyMotion app configuration using ENV and a single YAML file}
  spec.description   = %q{Keep your application configuration separate from your codebase with this simple, lightweight gem.}
  spec.homepage      = "https://github.com/KatanaCode/motion-figaro"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "motion-env"
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
