require "sinatra"
require "sinatra/activerecord"
require "./config/environments"
require "./app/models/post"

get "/" do
  post = Post.find(1)
  erb :index, :locals => { :title => post.title }
end

# Saving a post
# using sinatra post method to pick up paramters
# an just the active record method to save
post "/" do
  post = Post.new(params[:posts])  
  if post.save
    "Item has been saved: #{post.title}"
  else
    "Item was not saved"
  end
end