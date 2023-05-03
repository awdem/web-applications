require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base
  # This allows the app code to refresh
  # without having to restart the server.
  configure :development do
    register Sinatra::Reloader
  end


  

  get '/hello' do
    name = params[:name]

    "Hello #{name}"
  end

 
  # Work through the following in the project hello_web_project.

  # Create a new route that responds to requests sent with:

  # A method POST
  # A path /submit


  # # Request:
  # POST /submit

  # # With body parameters:
  # name=Leo
  # message=Hello world

  # # Expected response (2OO OK):
  # Thanks Leo, you sent this message: "Hello world"

  post '/submit' do
    name = params[:name]
    message = params[:message]

    "Thanks #{name}, you send this message '#{message}'"
  end


end

