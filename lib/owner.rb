class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets
  
  @@all = []
  
  def initialize(species)
    @species = species 
    @pets = { fishes: [], cats: [], dogs: [] }
    
    @@all << self
  end
  
  def say_species
    puts "I am a #{species}."
  end
  
  def buy_fish
  
  
  
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