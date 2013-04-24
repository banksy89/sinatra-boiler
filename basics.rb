require 'rubygems'  
require "bundler/setup"
require 'sinatra'
require "sinatra/activerecord"

set :database, "sqlite3:///foo.sqlite3"

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :host => "localhost",
  :username => "root",
  :password => "root",
  :database => "sinatra"
)

get '/' do
  erb :index
end