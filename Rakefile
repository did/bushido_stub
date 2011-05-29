require 'rubygems'

require 'rake'
require 'rake/gempackagetask'

require 'bundler'
Bundler.setup

gemspec = eval(File.read('bushido_stub.gemspec'))
Rake::GemPackageTask.new(gemspec) do |pkg|
  pkg.gem_spec = gemspec
end

desc 'build the gem and release it to rubygems.org'
task :release => :gem do
  sh 'gem push pkg/bushido_stub-#{gemspec.version}.gem'
end