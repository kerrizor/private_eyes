# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'private_eyes/version'

Gem::Specification.new do |spec|
  spec.name          = "private_eyes"
  spec.version       = PrivateEyes::VERSION
  spec.authors       = ["Kerri Miller"]
  spec.email         = ["kerrizor@kerrizor.com"]

  spec.summary       = %q{Reports on methods that should be private.}
  spec.description   = %q{This gem looks for methods with localized unary call sites that are public and rats them out.}
  spec.homepage      = "http://github.com/kerrizor/private_eyes"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
