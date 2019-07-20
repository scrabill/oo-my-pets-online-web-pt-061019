class Cat

  attr_accessor :mood
  attr_reader :name, :owner

  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
    @owner.cats << self

  end

  def self.all
    @@all
  end
end
