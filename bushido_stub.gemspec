Gem::Specification.new do |s|
  s.name = "bushido_stub"
  s.summary = "Stub all the Bushido API methods"
  s.description = "Best tool ever for Bushido developers"
  s.homepage = "http://bushi.do"

  s.version = "0.0.2"
  s.date = "2011-05-26"

  s.authors = ["Didier Lafforgue"]
  s.email = "didier@nocoffee.fr"

  s.add_dependency "activesupport", ">= 3.0.7"

  s.require_paths = ["lib"]
  s.files = Dir["lib/**/*"] + ["README.rdoc", "Rakefile"]
  s.extra_rdoc_files = ["README.rdoc"]

  s.has_rdoc = false

  s.rubygems_version = "1.3.4"
  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6")
end