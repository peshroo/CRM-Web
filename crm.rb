require_relative 'contact'
require 'sinatra'

get '/' do
  erb :index
end

get '/contacts' do
  @contacts = Contact.all
  erb :contacts
end

get '/contacts/:id' do
  @contact = Contact.find(params[:id])
  erb :contact
end

get '/about' do
  erb :about
end

after do
  ActiveRecord::Base.connection.close
end
