require 'rubygems'
require 'sinatra'
require 'instagram'
require 'bundler'
require 'haml'
     
Bundler.require
     
Instagram.configure do |config|
config.client_id = "da3ac7ac5f134b47a094876abdd11e27"
config.client_secret = "b0bb9dddf5284a05921726e6e2407a61"
end
     
get "/" do
@photos = Instagram.tag_recent_media('picoftheday')
haml :index
end