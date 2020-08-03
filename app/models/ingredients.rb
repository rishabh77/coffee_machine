class Ingredients
  # class level ingredients variables because it will be shared by every beverage instance
  @hot_water = 0
  @hot_milk = 0
  @ginger_syrup = 0
  @sugar_syrup = 0
  @tea_leaves_syrup = 0
  AVAILABLE_INGREDIENTS = %w[hot_water hot_milk ginger_syrup sugar_syrup tea_leaves_syrup].freeze
  class << self
    attr_reader :hot_water, :hot_milk, :ginger_syrup, :sugar_syrup, :tea_leaves_syrup
    attr_writer :hot_water, :hot_milk, :ginger_syrup, :sugar_syrup, :tea_leaves_syrup

    def low_running_ingredients
      low_running_ingredients = []
      AVAILABLE_INGREDIENTS.each do |ingredient|
        # assuming low running ingredients will have quantity less than 100
        low_running_ingredients << ingredient.titleize if Ingredients.send(ingredient.to_sym) < 100
      end
      low_running_ingredients
    end
  end
end
