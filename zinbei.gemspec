lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'zinbei/version'

Gem::Specification.new do |s|
  s.name = "zinbei"
  s.version = Zinbei::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["takkii"]
  s.email = "karuma.reason@gmail.com"
  s.executables = %w(zinbei zinbeie zinbeiw)
  s.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.homepage = "https://github.com/takkii/zinbei"
  s.metadata = { "github_repo" => "ssh://github.com/takkii/zinbei" }
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.required_ruby_version = ['>= 3.0']
  s.rubygems_version = "3.5.7"
  s.summary = "It is the work which saw the zinbeizame in notojima aquarium, and was made from the impression.
 "
  s.description = "zinbei is rubyshell(zinbei,zinbeiw,zinbeie), It's evolution every day."

  # 依存ライブラリ
  # s.add_runtime_dependency('gem name', '~> two number version')

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end
end
