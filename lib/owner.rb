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
    "I am a #{@species}."
  end
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end
  
  def walk_dogs 
    @pets[:dogs].each { |dog| dog.mood = "happy" } 
  end
  
  def play_with_cats 
    @pets[:cats].each { |cat| cat.mood = "happy" }
  end
  
  def feed_fish 
    @pets[:fishes].each { |fish| fish.mood = "happy" }
  end
  
  def sell_pets 
    @pets.each do |pet_type, pet_arr| 
      pet_arr.each { |pet| pet.mood = "nervous" }
    end
    @pets = { fishes: [], cats: [], dogs: [] }
  end
  
  def list_pets 
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
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