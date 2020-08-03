module IngredientsHelper
  def init_ingredients_quantity(quantities)
    quantities.each do |ingredient, quantity|
      next unless ingredient.in?(Ingredients::AVAILABLE_INGREDIENTS)
      # assigning the class level variable with value in the param
      Ingredients.send("#{ingredient}=".to_sym, quantity.to_i)
    end
  end

  def insufficient_ingredients(ingredients)
    insufficient_ingredients = []
    ingredients.each do |ingredient, quantity|
      next unless ingredient.in?(Ingredients::AVAILABLE_INGREDIENTS)
      if Ingredients.send(ingredient.to_sym) < quantity.to_i
        insufficient_ingredients << ingredient.titleize
      end
    end
    insufficient_ingredients
  end

  def unavailable_ingredients(ingredients)
    (ingredients.keys - Ingredients::AVAILABLE_INGREDIENTS).map(&:titleize)
  end

  def update_ingredients(ingredients)
    ingredients.each do |ingredient, quantity|
      new_quantity = Ingredients.send(ingredient.to_sym) - quantity.to_i
      Ingredients.send("#{ingredient}=".to_sym, new_quantity)
    end
  end
end
