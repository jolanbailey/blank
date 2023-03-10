class ApplicationController < Sinatra::Base
    configure do
        set :public_folder, 'public'
        set :views, 'app/views' 
        enable :sessions
        set :session_secret, 'td2ggb+SRaOk3Kt23/Q6XVTYFtDK57sTUcs7SgM0a6+mmq1JO9+9vnleTEAiL0ko'
    end
    
    get '/' do
        File.read(File.join('app/views', 'index.html'))
    end
end