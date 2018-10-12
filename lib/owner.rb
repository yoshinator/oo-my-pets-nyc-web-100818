require 'pry'
class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    f = Fish.new(name)
    @pets[:fishes] << f
  end

  def buy_cat(name)
    c = Cat.new(name)
    @pets[:cats] << c
  end

  def buy_dog(name)
    d = Dog.new(name)
    @pets[:dogs] << d
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
     @pets.each do |species,pets|
       pets.each do |pet|
         pet.mood = "nervous"
       end
     end
     @pets = {:fishes => [], :dogs => [], :cats => []}
   end

   def list_pets
     "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
   end
  #class methods

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.length
  end

  def self.all
    @@all
  end


end

o1 = Owner.new("Jim")
o2 = Owner.new("Tom")
o1 = Owner.new("Bill")
o1 = Owner.new("Joe")
