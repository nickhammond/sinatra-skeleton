require 'rubygems'
require 'sinatra'
require 'app.rb'
path = ''

set :root, path
set :views, path + '/views'
set :public,  path + '/public'
set :run, false
set :environment, :production
set :raise_errors, true

log = File.new("sinatra.log", "a")
STDOUT.reopen(log)
STDERR.reopen(log)

run Sinatra::Application
