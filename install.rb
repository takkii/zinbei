# frozen_string_literal: true

version = ARGV.pop

if version.nil?
  puts 'Usage: ruby install.rb version'
  exit(64)
end

%w[zinbeijett tanraku].each do |framework|
  puts "Installing #{framework}..."
  `cd #{framework} && gem build #{framework}.gemspec && gem install #{framework}-#{version}.gem --no-ri --no-rdoc && rm #{framework}-#{version}.gem`
end

puts 'Installing zinbei...'
`gem build zinbei.gemspec`
`gem install zinbei-#{version}.gem --no-ri --no-rdoc `
`rm zinbei-#{version}.gem`
