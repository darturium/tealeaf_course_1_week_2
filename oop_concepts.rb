
class Dog

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{@name} barks!"
  end

  def get_name
    @name
  end

  def set_name=(new_name)
    @name = new_name
  end

  def info
    "#{@name} is #{@height} feet tall and weighs #{@weight} pounds."
  end

end

teddy = Dog.new('teddy', 3, 95)
fido = Dog.new('fido', 1, 35)

puts teddy.speak
puts fido.speak

teddy.set_name = "Roosevelt"
puts teddy.info