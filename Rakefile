require 'rubygems'
require 'rake'
require 'rake/rdoctask'
require 'fileutils'

def gemspec
  @gemspec ||= eval(File.read('fancy_irb.gemspec'), binding, 'fancy_irb.gemspec')
end

desc "Build the gem"
task :gem => :gemspec do
  sh "gem build fancy_irb.gemspec"
  FileUtils.mkdir_p 'pkg'
  FileUtils.mv "#{gemspec.name}-#{gemspec.version}.gem", 'pkg'
end

desc "Install the gem locally (without docs)"
task :install => :gem do
  sh %{gem install pkg/#{gemspec.name}-#{gemspec.version} --no-rdoc --no-ri}
end

desc "Generate the gemspec"
task :generate do
  puts gemspec.to_ruby
end

desc "Validate the gemspec"
task :gemspec do
  gemspec.validate
end


require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION').chomp : ""

  rdoc.rdoc_dir = 'doc'
  rdoc.title = "FancyIrb #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
