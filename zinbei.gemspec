# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'zinbei/version'

Gem::Specification.new do |s|
  s.name = "zinbei"
  s.version = Zinbei::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["takkii"]
  s.email = "karuma.reason@gmail.com"
  s.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(mini_test|mini_unit)/}) }
  s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.homepage = "https://github.com/takkii/zinbei"
  s.metadata = { "github_repo" => "ssh://github.com/takkii/zinbei" }
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.required_ruby_version = ['>= 3.0']
  s.required_rubygems_version = '~> 3.6.9'
  s.summary = "It is the work which saw the zinbeizame in notojima aquarium,
   and was made from the impression."
  s.description = "Zinbei is a shell, There are three types of executable files."

  # dependent library
  s.add_runtime_dependency('rake', '~> 13.2')
  s.add_runtime_dependency('minitest', '~> 5.25')
  s.add_runtime_dependency('pycall', '~> 1.5') unless Gem.win_platform?
  s.add_runtime_dependency('rinku', '~> 2.0') unless Gem.win_platform?
  s.add_runtime_dependency('sanitize', '~> 6.1')
  s.add_runtime_dependency('test-unit', '~> 3.6')
  s.add_runtime_dependency('simplecov', '~> 0.22')

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end
end
