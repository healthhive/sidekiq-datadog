lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sidekiq/datadog/version'

Gem::Specification.new do |s|
  s.name          = 'sidekiq-datadog'
  s.version       = Sidekiq::Datadog::VERSION.dup
  s.authors       = ['Tiago Nobre']
  s.email         = ['tiagolnobre@gmail.com']
  s.description   = 'Datadog metrics for sidekiq'
  s.summary       = 'Datadog metrics for sidekiq'
  s.homepage      = 'https://github.com/healthhive/sidekiq-datadog'

  s.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  s.executables   = s.files.grep(%r{^bin/}).map {|f| File.basename(f) }
  s.require_paths = ['lib']
  s.required_ruby_version = '>= 2.6'

  s.add_runtime_dependency('dogstatsd-ruby', '>= 5.6.0')
  s.add_runtime_dependency('sidekiq', '>= 6.4.0')

  s.add_development_dependency('bundler')
  s.add_development_dependency('rake')
  s.add_development_dependency('rspec')
  s.add_development_dependency('rubocop-bsm')
  s.add_development_dependency('rubocop-performance')
  s.add_development_dependency('timecop')

  s.metadata['rubygems_mfa_required'] = 'true'
end
