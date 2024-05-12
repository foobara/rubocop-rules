require_relative "version"

Gem::Specification.new do |spec|
  spec.name = "foobara-rubocop-rules"
  spec.version = Foobara::RubocopRules::VERSION
  spec.authors = ["Miles Georgi"]
  spec.email = ["azimux@gmail.com"]

  spec.summary = "Common rubocop rules used in various foobara projects."
  spec.homepage = "https://github.com/foobara/rubocop-rules"
  spec.license = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  spec.required_ruby_version = ">= 3.2"

  spec.files = Dir[
     "rules/**/*.yml",
     ".rubocop.yml",
     "version.rb",
     "LICENSE.txt"
   ]

  spec.add_dependency "rubocop"
  spec.add_dependency "rubocop-rspec"

  spec.metadata["rubygems_mfa_required"] = "true"
end
