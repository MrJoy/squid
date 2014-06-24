require "rubygems"
require "bundler/setup"
Bundler.setup(:default, :development)

require_relative "./lib/squid"

desc "Open a PRY console with the code loaded."
task :console do
  require 'pry'
  binding.pry
end
