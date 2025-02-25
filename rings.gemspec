require_relative 'lib/rings/version'

Gem::Specification.new do |spec|
  spec.name          = "rings"
  spec.version       = Rings::VERSION
  spec.authors       = ["John Crudo"]
  spec.email         = ["55417040+johncrudo@users.noreply.github.com"]

  spec.summary       = "Rings makes Ruby game development feel better."
  spec.homepage      = "https://github.com/ruby-on-rings/rings"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ruby-on-rings/rings"
  spec.metadata["changelog_uri"] = "https://github.com/ruby-on-rings/rings/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
