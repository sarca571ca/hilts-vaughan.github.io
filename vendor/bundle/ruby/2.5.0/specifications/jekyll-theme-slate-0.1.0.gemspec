# -*- encoding: utf-8 -*-
# stub: jekyll-theme-slate 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-theme-slate".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jason Costello".freeze, "GitHub, Inc.".freeze]
  s.date = "2017-08-14"
  s.email = ["opensource+jekyll-theme-slate@github.com".freeze]
  s.homepage = "https://github.com/pages-themes/slate".freeze
  s.licenses = ["CC0-1.0".freeze]
  s.rubygems_version = "2.7.3".freeze
  s.summary = "Slate is a Jekyll theme for GitHub Pages".freeze

  s.installed_by_version = "2.7.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jekyll>.freeze, ["~> 3.5"])
      s.add_runtime_dependency(%q<jekyll-seo-tag>.freeze, ["~> 2.0"])
    else
      s.add_dependency(%q<jekyll>.freeze, ["~> 3.5"])
      s.add_dependency(%q<jekyll-seo-tag>.freeze, ["~> 2.0"])
    end
  else
    s.add_dependency(%q<jekyll>.freeze, ["~> 3.5"])
    s.add_dependency(%q<jekyll-seo-tag>.freeze, ["~> 2.0"])
  end
end
