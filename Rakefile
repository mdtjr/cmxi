# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "roman_numerals"
  gem.homepage = "http://github.com/gametheoretic/roman_numerals"
  gem.license = "MIT"
  gem.summary = %Q{use #to_roman to translate positive integers to an uppercase Roman numeral string representation}
  gem.description = %Q{Gem grants any object which a) responds to :to_i, and b) whose integer representation is greater than zero, to translate itself to an uppercase string of Roman numerals.\n\nE.g., 9.to_roman will return "IX"; "1876".to_roman will return "MDCCCLXXVI".\n\nNo tests included, due to author's lack of silliness.}
  gem.email = "gametheoretic@gmail.com"
  gem.authors = ["michael d. towle"]
  # dependencies defined in Gemfile
end