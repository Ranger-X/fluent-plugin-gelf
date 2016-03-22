# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = 'fluent-plugin-gelf'
  gem.version     = '0.0.1'
  gem.authors     = ['Eric Searcy', 'Ivan Makeev']
  gem.email       = 'rangerx.1985@gmail.com'
  gem.homepage    = 'https://github.com/Ranger-X/fluent-plugin-gelf'
  gem.description = 'Fluentd output plugin to send data to Graylog via UDP'
  gem.summary     = gem.description
  gem.licenses    = ['MIT']
  gem.has_rdoc    = false

  gem.files       = `git ls-files`.split("\n")
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'fluentd', '>= 0.10.17'
  gem.add_runtime_dependency 'gelf', '~> 2.0'
  gem.add_development_dependency 'rake'
end