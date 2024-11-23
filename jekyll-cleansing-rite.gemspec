# frozen_string_literal: true

require_relative "lib/jekyll-cleansing-rite/version"

Gem::Specification.new do |s|
  s.name        = "jekyll-cleansing-rite"
  s.summary     = "Purges heretical voidspace from HTML to appease Jekyll's Machine Spirit"
  s.version     = Jekyll::CleansingRite::VERSION
  s.authors     = ["Jamison Griffith"]
  s.email       = ["jamison.griffith@gmail.com"]

  s.homepage = "https://github.com/jamogriff/jekyll-cleansing-rite"
  s.license = "MIT"
  s.files    = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(lib|LICENSE|README)!i) }

  s.required_ruby_version = ">= 2.7"

  s.add_dependency "jekyll", ">= 3.0", "< 5.0"
  s.add_dependency "htmlbeautifier", "~> 1.4"

  s.add_development_dependency "bundler", "~> 2.1"
end
