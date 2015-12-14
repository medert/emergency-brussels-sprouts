require_relative "ingredient"

class Container
  attr_reader :weight, :maximum_holding_weight, :ingredients

  def initialize(weight, max_weight)
    @weight = weight
    @maximum_holding_weight = max_weight
    @ingredients = []
  end

  def fill_with_ingredient(ingredient)
    total_ingredient = (maximum_holding_weight/ingredient.weight).to_i
    total_ingredient.times {|element| @ingredients.push(ingredient)}
    @weight += maximum_holding_weight
  end

  def which_ingredient
    "#{@ingredients.first.name}s"
  end

  def how_many_ingredients
    @ingredients.size
  end

  def remove_one_ingredient
    @ingredients.pop
  end

  def empty
    @ingredients = []
  end
end
