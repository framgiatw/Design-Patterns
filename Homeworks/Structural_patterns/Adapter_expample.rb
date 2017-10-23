class Meat
  attr_accessor :name, :protein, :weight
  def initialize name, protein, weight
    @name = name
    @weight = weight
    @protein = protein
  end

  def take_calo
    @weight * @protein *4 / 100
  end
end

class Human
  attr_accessor :energy
  def initialize
    @energy = 100
  end

  def eat meat
    @energy += meat.take_calo
  end
end

class Cow
  attr_accessor :weight

  def initialize weight
    @weight = weight
  end
end

class MeatAdapter
  attr_accessor :protein, :weight

  def initialize cow
    @cow = cow
    @weight = cow.weight
    @protein = 4
  end

  def take_calo
    @weight * @protein
  end
end

human = Human.new
meat = Meat.new "pig", 16, 100
human.eat meat
cow = Cow.new 1000
meat_cow = MeatAdapter.new cow
human.eat meat_cow
