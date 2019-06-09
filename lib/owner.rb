class Owner
  # code goes here
  attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @species = species 
    @pets = { fishes: [], cats: [], dogs: [] }
    
    @@all << self
  end
  
  def say_species
    
  end
  
  
  
  def self.all 
    @@all 
  end
  
  def self.count 
    @@all.length 
  end
  
  def self.reset_all 
    @@all = []
  end
end