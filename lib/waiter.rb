class Waiter
  
  @@all = []
  attr_accessor :name, :years
  def initialize(name, years)
    @name = name
    @years = years
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_meal
    
  end
  
  def meals
    Meal.all.select do |meal|
    meal.waiter == self #checking for waiter now
  end
end
  
  def best_tipper
   best_tipped_meal = meals.max do |meal_a, meal_b|
    meal_a.tip <=> meal_b.tip
  end
  best_tipped_meal.customer
end

end