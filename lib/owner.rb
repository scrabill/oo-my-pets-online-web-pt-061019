require "pry"

class Owner

  attr_accessor :cats, :dogs, :mood
  attr_reader :name, :species # Name can be created on initialization but not modifed

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @cats = []
    @dogs = []
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a human."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    @@all = []
  end

  def cats
    @cats
  end

  def dogs
    @dogs
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    self.cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets # T_T
    all_pets = self.cats + self.dogs

    all_pets.each do |pet|

      pet.mood = "nervous"
      pet.owner = nil
      # binding.pry
    end

    self.cats = [] # self.dogs.clear would also work
    self.dogs = []

    # self.cats.each do |cat|
    #
    #   cat.mood = "nervous"
    #   cat.owner = nil
    # end
    #
    # self.dogs.each do |dog|
    #   binding.pry
    #   dog.mood = "nervous"
    #   dog.owner = nil
    # end

    # self.cats.each do |cat|
    #   cat.owner.remove_instance_variable(:@name)
    # end

    # self.remove_instance_variable(:@name)

    # self.dogs.each do |dog|
    #   dog.owner.remove_instance_variable(:@name)
    # end
  end

  def list_pets
    # binding.pry
    x = self.dogs.count
    y = self.cats.count
    "I have #{x} dog(s), and #{y} cat(s)."
  end

# shannon.remove_instance_variable(:@name) # remove_instance_variable removes the property and returns its value
# 2.5.1 :134 > shannon.dogs.each do |dog|
# 2.5.1 :135 >     puts dog.name
# 2.5.1 :136?>   end
# Hanna
#  => [#<Dog:0x00007fa4ef050f50 @name="Hanna", @owner=#<Owner:0x00007fa4ef060810 @name="Shannon", @cats=[], @dogs=[...]>, @mood="nervous">]
# 2.5.1 :137 > shannon.dogs.each do |dog|
# 2.5.1 :138 >     puts dog.owner
# 2.5.1 :139?>   end

end
