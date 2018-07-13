class Owner
  # code goes here
  def initialize(species = "human")
    @species = species
    @pets = {
      :fishes => [], 
      :dogs => [], 
      :cats => []
    }
  end
  
  #returns species
  def species
    @species
  end
  
  #returns name
  def name 
    @name
  end
  
  #sets name
  def name=(name)
    @name = name
  end
  
  #returns a string where owner says species
  def say_species
    "I am a #{@species}."
  end
  
  def pets 
    @pets
  end
  
  def buy_fish(name)
    new_pet = Fish.new(name)
    @pets[:fishes] << new_pet.name
  end 
  
  def buy_cat(name)
    new_pet = Cat.new(name)
    @pets[:cats] << new_pet.name
  end
  
  def buy_dog(name)
    new_pet = Cat.new(name)
    @pets[:dogs] << new_pet.name
  end
  
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
 end
