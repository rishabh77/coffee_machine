module BeveragesHelper
  include IngredientsHelper
  def prepare_beverages(beverages)
    response = []
    beverages.each do |beverage, ingredients|
      insufficient_ingredients = insufficient_ingredients(ingredients)
      unavailable_ingredients = unavailable_ingredients(ingredients)
      # check if ingredients available or sufficient enough
      if !insufficient_ingredients.present? && !unavailable_ingredients.present? && beverage.in?(Beverage.beverage_types.keys)
        # prepare the beverage/ create a row in database
        Beverage.create!(title: beverage.titleize, beverage_type: beverage.to_sym)
        # update the ingredients after getting used up by this beverage
        update_ingredients(ingredients)
      end
      create_response(beverage, response, insufficient_ingredients, unavailable_ingredients)
    end
    response
  end

  private

  def create_response(beverage, response, insufficient_ingredients, unavailable_ingredients)
    if !beverage.in?(Beverage.beverage_types.keys)
      response << "#{beverage.titleize} unavailable"
    elsif !insufficient_ingredients.present? && !unavailable_ingredients.present? && beverage.in?(Beverage.beverage_types.keys)
      response << "#{beverage.titleize} prepared"
    else
      if unavailable_ingredients.present?
        response << "#{beverage.titleize} cannot be prepared because #{unavailable_ingredients.join(", ")} is/are not available"
      else
        response << "#{beverage.titleize} cannot be prepared because #{insufficient_ingredients.join(", ")} is/are not sufficient"
      end
    end
  end
end
