# -*- encoding: utf-8 -*-
# stub: jekyll-remote-theme 0.2.3 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-remote-theme".freeze
  s.version = "0.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ben Balter".freeze]
  s.date = "2017-11-27"
  s.email = ["ben.balter@github.com".freeze]
  s.homepage = "https://github.com/benbalter/jekyll-remote-theme".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.3".freeze
  s.summary = "Jekyll plugin for building Jekyll sites with any GitHub-hosted theme".freeze

  s.installed_by_version = "2.7.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jekyll>.freeze, ["~> 3.5"])
      s.add_runtime_dependency(%q<rubyzip>.freeze, ["< 3.0", ">= 1.2.1"])
      s.add_runtime_dependency(%q<typhoeus>.freeze, ["< 2.0", ">= 0.7"])
      s.add_development_dependency(%q<jekyll-theme-primer>.freeze, ["~> 0.5"])
      s.add_development_dependency(%q<pry>.freeze, ["~> 0.11"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.4"])
    else
      s.add_dependency(%q<jekyll>.freeze, ["~> 3.5"])
      s.add_dependency(%q<rubyzip>.freeze, ["< 3.0", ">= 1.2.1"])
      s.add_dependency(%q<typhoeus>.freeze, ["< 2.0", ">= 0.7"])
      s.add_dependency(%q<jekyll-theme-primer>.freeze, ["~> 0.5"])
      s.add_dependency(%q<pry>.freeze, ["~> 0.11"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.4"])
    end
  else
    s.add_dependency(%q<jekyll>.freeze, ["~> 3.5"])
    s.add_dependency(%q<rubyzip>.freeze, ["< 3.0", ">= 1.2.1"])
    s.add_dependency(%q<typhoeus>.freeze, ["< 2.0", ">= 0.7"])
    s.add_dependency(%q<jekyll-theme-primer>.freeze, ["~> 0.5"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.11"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.4"])
  end
end
