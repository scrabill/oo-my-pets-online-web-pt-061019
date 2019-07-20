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
    Cat.new(name, owner = self)
  end

  def buy_dog(name)
    Dog.new(name, owner = self)
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
    self.cats.each do |cat|
      cat.mood = "nervous"
    end

    self.dogs.each do |dog|
      dog.mood = "nervous"
    end
  end

end
