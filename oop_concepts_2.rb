class Animal
  attr_accessor :name

  def initialize(n)
    @name = n
  end

  def eat
    "#{name} is eating"
  end

  def speak
    "#{name} is speaking"
  end
end

class Dog < Animal
  def fetch
    "#{name} is fetching"
  end

  def eat
    "#{name} is eating"
  end

  def speak
    "#{name} is barking"
  end
end

class Cat < Animal
  def speak
    "#{name} is meowing"
  end
end

teddy = Dog.new("teddy")
puts teddy.name
puts teddy.fetch

kitty = Cat.new("kitty")
puts kitty.name
puts kitty.speak

puts Dog.ancestors