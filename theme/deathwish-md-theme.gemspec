# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "theme"
  spec.version       = "0.1.15"
  spec.authors       = ["Maximiliano"]

  spec.summary       = "Personal theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.platform = Gem::Platform::RUBY
  spec.add_runtime_dependency 'jekyll', '> 3.5', '< 5.0'
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"
  spec.add_runtime_dependency "jekyll-time-to-read", "~> 0.1.2"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1.0"
end
