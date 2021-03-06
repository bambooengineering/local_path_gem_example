
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "lib_b/version"

Gem::Specification.new do |spec|
  spec.name          = "lib_b"
  spec.version       = LibB::VERSION
  spec.authors       = ["Joe Horsnell"]
  spec.email         = ["github@joehorsnell.com"]

  spec.summary       = %q{Write a short summary, because RubyGems requires one.}
  spec.description   = %q{Write a longer description or delete this line.}

  spec.files         = ["lib"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "lib_c"
  spec.add_dependency "awesome_print"
end
