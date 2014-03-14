class Dog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def speak
    "#{@name} barks!"
  end

  # the attr_accessor will now create the two following methods behind the scenes
  # def name
  #   @name
  # end

  # def name=(new_name)
  #   @name = new_name
  # end

  def info
    "#{name} is #{height} feet tall and weighs #{weight} pounds."
  end

  def update_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

end

# teddy = Dog.new('teddy', 3, 95)
teddy = Dog.new('teddy', 3, 95)
# fido = Dog.new('fido', 1, 35)
puts teddy.info

teddy.name = "Max"
puts teddy.speak
teddy.weight = 100
teddy.height = 3

puts teddy.name
puts teddy.info

teddy.update_info("Maxie", 3.2, 120)
puts teddy.info
