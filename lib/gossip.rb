require 'csv'

class Gossip

	attr_accessor :author, :content

  	def initialize(author, content)
  		@author = author
  		@content = content
  	end

	def save
	  CSV.open("./db/gossip.csv", "ab") do |csv|
	    csv << [@author, @content]
	  end
	end

	#afficher toutes les données de la class Gossip
  def self.all  #rappel self, c'est pr les méthodes de classe
  	all_gossips = [] #on initialise un array vide
 #on va chercher chacune des lignes du CSV do
 #on va crée un gossip avec les infos de la ligne
 #all_gossip << gossip (on rajoute le gossip à l'array)
   	CSV.read("./db/gossip.csv").each do |csv_line|
   		all_gossips << Gossip.new(csv_line[0], csv_line[1]) 
   	end 
  return all_gossips
  end 

	   #on récupére le gossip numéro id
  def self.find(id)
    puts Gossip.all
    all_gossips = Gossip.all
    return all_gossips[id.to_i]
  end


end #fin de la classe gossip

