require 'sinatra/base'

class Bookmark < Sinatra::Base

  get '/' do
    "Bookmark Manager"
  end

  get '/bookmarks/' do
    @bookmarks = ["http://bbc.co.uk",
                 "http://makers.tech",
                 "http://google.co.uk"]

    @bookmarks = Bookmark.all
    erb :"bookmarks/index"
  end
  
  run! if app_file == $0
end
