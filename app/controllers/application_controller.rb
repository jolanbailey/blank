class ApplicationController < Sinatra::Base
    #configure do
    #    set :public_folder, 'public'
    #    set :views, 'app/views' enable :sessions
    #    set :session_secret, 'password_security'
    #end
    
    get '/' do
        File.read(File.join('app/views', 'index.html'))
    end
end