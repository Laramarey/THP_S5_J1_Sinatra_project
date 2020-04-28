
require 'bundler'
Bundler.require

require 'gossip'

class ApplicationController < Sinatra::Base


    get '/' do
      erb :index, locals: {gossips: Gossip.all}
    end
    #run! if app_file == $0 
#Cette ligne permet d'exécuter le code de la classe 
#sans avoir à écriire ApplicationController.new.perform
#mais le mieux c'est de bien séparer code et mettre les exécutions 
#dans un fichier à part, config.ru qui contient les infos nécessaires
#au lancement de notre serveur 

    get '/gossips/new/' do 
      erb :new_gossip
    end

    post '/gossips/new/' do
      Gossip.new(params["gossip_author"], params["gossip_content"]).save
    redirect '/'
    end

#affichage dynamique du gossip par ID
   get '/gossips/:id/' do 
    erb :show, locals: {gossips: Gossip.find(params["id"].to_i), id: params["id"]}
  end

end #fin de la classe

