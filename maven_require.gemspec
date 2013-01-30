Gem::Specification.new do |s|
  s.name = "maven_require"
  s.version = File.read(File.expand_path('../VERSION', __FILE__))
  s.summary = "allow requiring maven coordinates in jruby"
  s.authors = ["Brian McCallister"]
  s.add_runtime_dependency "mini_aether", [">= 0.0.7"]
  s.files = ["lib/maven_require.rb"]
  s.homepage = "https://github.com/brianm/maven_require"
  s.email = "brianm@skife.org"
  s.platform = 'java'

  s.add_development_dependency 'minitest'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'version'
end
