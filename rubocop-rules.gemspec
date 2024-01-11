version = "0.0.1".freeze

Gem::Specification.new do |spec|
  spec.name = "foobara-rubocop-rules"
  spec.version = version
  spec.authors = ["Miles Georgi"]
  spec.email = ["azimux@gmail.com"]

  spec.summary = "Common rubocop rules used in various foobara projects."
  spec.homepage = "https://github.com/foobara/rubocop-rules"
  spec.license = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  spec.required_ruby_version = ">= 3.2"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[
                        .github
                        .gitignore
                        .ruby-version
                        CHANGELOG.md
                        Gemfile
                        Gemfile.lock
                        Rakefile
                        README.md
                      ])
    end
  end

  spec.add_dependency "rubocop"
  spec.add_dependency "rubocop-rspec"

  spec.metadata["rubygems_mfa_required"] = "true"
end
