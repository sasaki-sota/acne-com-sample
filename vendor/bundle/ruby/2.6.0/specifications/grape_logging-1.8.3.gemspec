# -*- encoding: utf-8 -*-
# stub: grape_logging 1.8.3 ruby lib

Gem::Specification.new do |s|
  s.name = "grape_logging".freeze
  s.version = "1.8.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["aserafin".freeze]
  s.bindir = "exe".freeze
  s.date = "2019-09-12"
  s.description = "This gem provides simple request logging for Grape with just few lines of code you have to put in your project! In return you will get response codes, paths, parameters and more!".freeze
  s.email = ["adrian@softmad.pl".freeze]
  s.homepage = "http://github.com/aserafin/grape_logging".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Out of the box request logging for Grape!".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<grape>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<rack>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.8"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.5"])
      s.add_development_dependency(%q<pry-byebug>.freeze, ["~> 3.4.2"])
    else
      s.add_dependency(%q<grape>.freeze, [">= 0"])
      s.add_dependency(%q<rack>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.8"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.5"])
      s.add_dependency(%q<pry-byebug>.freeze, ["~> 3.4.2"])
    end
  else
    s.add_dependency(%q<grape>.freeze, [">= 0"])
    s.add_dependency(%q<rack>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.8"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.5"])
    s.add_dependency(%q<pry-byebug>.freeze, ["~> 3.4.2"])
  end
end
