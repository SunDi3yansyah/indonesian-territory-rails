lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "indonesian/territory/rails/version"

Gem::Specification.new do |spec|
  spec.name          = "indonesian-territory-rails"
  spec.version       = Indonesian::Territory::Rails::VERSION
  spec.authors       = ["Cahyadi Triyansyah"]
  spec.email         = ["sundi3yansyah@gmail.com"]

  spec.summary       = %q{Indonesian Territory for Rails}
  spec.description   = %q{Database of Indonesian Territory for Rails}
  spec.homepage      = "https://github.com/SunDi3yansyah/indonesian-territory-rails"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "minitest", "~> 5.11"
end
