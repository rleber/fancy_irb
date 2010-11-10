# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{fancy_irb}
  s.version = "0.6.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jan Lelis"]
  s.date = %q{2010-11-09}
  s.description = %q{FncyIrb patches your IRB to create a smooth output experience.
* Use fancy colors! You can colorize the prompts, irb errors, +stderr+ and +stdout+
* Output results as Ruby comment #=> (rocket)
* Enhance your output value, using procs}
  s.email = %q{mail@janlelis.de}
  s.extra_rdoc_files = [
    "LICENSE",
     "README"
  ]
  s.files = [
    "LICENSE",
     "README",
     "Rakefile",
     "VERSION",
     "fancy-irb.gemspec",
     "lib/fancy_irb.rb",
     "lib/fancy_irb/irb_ext.rb"
  ]
  s.homepage = %q{http://github.com/janlelis/fancy_irb}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{FancyIrb patches your IRB to create a smooth output experience.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<wirble>, [">= 0"])
    else
      s.add_dependency(%q<wirble>, [">= 0"])
    end
  else
    s.add_dependency(%q<wirble>, [">= 0"])
  end
end

