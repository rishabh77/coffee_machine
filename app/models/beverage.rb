class Beverage < ApplicationRecord
  # Beverage model. The corresponding table has 2 attributes, title and beverage_type.
  # id, created_at, updated_at provided by default

  # enum because beverage types are fixed and does not change frequently
  enum beverage_type: { hot_tea: 1, hot_coffee: 2, black_tea: 3, green_tea: 4 }

  def type
    beverage_type.to_s.titleize
  end
end
