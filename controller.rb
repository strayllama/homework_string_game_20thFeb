require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/string_stuff.rb')

get '/' do
  erb(:home)
end

get '/equal/:string1/:string2' do
  string = String_stuff.new(params[:string1], params[:string2])
  @result = string.equals()
  erb(:result)
end

get '/palindrome/:string1' do
  string = String_stuff.new(params[:string1])
  @result = string.palindrome()
  erb(:result)
end

get '/isogram/:string1' do
  string = String_stuff.new(params[:string1])
  @result = string.isogram()
  erb(:result)
end

get '/anogram/:string1/:string2' do
  string = String_stuff.new(params[:string1],params[:string2])
  @result = string.anogram()
  erb(:result)
end
