require 'rake'
require 'rake/testtask'
#require 'rake/version_task'
require 'rubygems/gem_runner'
require 'rubygems/package_task'

Rake::TestTask.new do |t|
  t.libs.push 'lib'
  t.pattern = 'test/**/*_test.rb'
end

def gemspec
    @gemspec ||= Gem::Specification.load('maven_require.gemspec')
end

Gem::PackageTask.new(gemspec) do |p|
  p.need_tar = true
  p.gem_spec = gemspec
end