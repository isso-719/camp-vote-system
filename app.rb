require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require './models/mentor.rb'

get '/' do
  @mentors = Mentor.all

  erb :index
end

post '/plus/:id' do
  mentor = Mentor.find(params[:id])
  mentor.count += 1
  mentor.save

  mentor.count.to_s
end