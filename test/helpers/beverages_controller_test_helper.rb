module BeveragesControllerTestHelper
  def test_param_1
    {
      "machine": {
        "outlets": {
          "count_n": 3
        },
        "total_items_quantity": {
          "hot_water": 500,
          "hot_milk": 500,
          "ginger_syrup": 100,
          "sugar_syrup": 100,
          "tea_leaves_syrup": 100
        },
        "beverages": {
          "hot_tea": {
            "hot_water": 200,
            "hot_milk": 100,
            "ginger_syrup": 10,
            "sugar_syrup": 10,
            "tea_leaves_syrup": 30
          },
          "hot_coffee": {
            "hot_water": 100,
            "ginger_syrup": 30,
            "hot_milk": 400,
            "sugar_syrup": 50,
            "tea_leaves_syrup": 30
          },
          "black_tea": {
            "hot_water": 300,
            "ginger_syrup": 30,
            "sugar_syrup": 50,
            "tea_leaves_syrup": 30
          },
          "green_tea": {
            "hot_water": 100,
            "ginger_syrup": 30,
            "sugar_syrup": 50,
            "green_mixture": 30
          }
        }
      }
    }
  end

  def test_response_1
    ["Hot Tea prepared",
      "Hot Coffee prepared",
      "Black Tea cannot be prepared because Hot Water, Sugar Syrup is/are not sufficient",
      "Green Tea cannot be prepared because Green Mixture is/are not available"]
  end

  def test_param_2
    {
      "machine": {
        "outlets": {
          "count_n": 3
        },
        "total_items_quantity": {
          "hot_water": 5,
          "hot_milk": 5,
          "ginger_syrup": 1,
          "sugar_syrup": 1,
          "tea_leaves_syrup": 1
        },
        "beverages": {
          "hot_tea": {
            "hot_water": 200,
            "hot_milk": 100,
            "ginger_syrup": 10,
            "sugar_syrup": 10,
            "tea_leaves_syrup": 30
          },
          "hot_coffee": {
            "hot_water": 100,
            "ginger_syrup": 30,
            "hot_milk": 400,
            "sugar_syrup": 50,
            "tea_leaves_syrup": 30
          },
          "black_tea": {
            "hot_water": 300,
            "ginger_syrup": 30,
            "sugar_syrup": 50,
            "tea_leaves_syrup": 30
          },
          "green_tea": {
            "hot_water": 100,
            "ginger_syrup": 30,
            "sugar_syrup": 50,
            "green_mixture": 30
          }
        }
      }
    }
  end

  def test_response_2
    ["Hot Tea cannot be prepared because Hot Water, Hot Milk, Ginger Syrup, Sugar Syrup, Tea Leaves Syrup is/are not sufficient",
      "Hot Coffee cannot be prepared because Hot Water, Ginger Syrup, Hot Milk, Sugar Syrup, Tea Leaves Syrup is/are not sufficient",
      "Black Tea cannot be prepared because Hot Water, Ginger Syrup, Sugar Syrup, Tea Leaves Syrup is/are not sufficient",
      "Green Tea cannot be prepared because Green Mixture is/are not available"]
  end

  def test_param_3
    {
      "machine": {
        "outlets": {
          "count_n": 3
        },
        "total_items_quantity": {
          "hot_water": 500,
          "hot_milk": 500,
          "ginger_syrup": 100,
          "sugar_syrup": 100,
          "tea_leaves_syrup": 100
        },
        "beverages": {
          "hot_tea": {
            "hot_water": 1200,
            "hot_milk": 100,
            "ginger_syrup": 10,
            "sugar_syrup": 10,
            "tea_leaves_syrup": 30
          },
          "hot_coffee": {
            "hot_water": 1100,
            "ginger_syrup": 30,
            "hot_milk": 400,
            "sugar_syrup": 50,
            "tea_leaves_syrup": 30
          },
          "black_tea": {
            "hot_water": 300,
            "ginger_syrup": 3000,
            "sugar_syrup": 50,
            "tea_leaves_syrup": 30
          },
          "green_tea": {
            "hot_water": 100,
            "ginger_syrup": 3000,
            "sugar_syrup": 50,
            "green_mixture": 30
          }
        }
      }
    }
  end

  def test_response_3
    ["Hot Tea cannot be prepared because Hot Water is/are not sufficient",
      "Hot Coffee cannot be prepared because Hot Water is/are not sufficient",
      "Black Tea cannot be prepared because Ginger Syrup is/are not sufficient",
      "Green Tea cannot be prepared because Green Mixture is/are not available"]
  end

  def test_param_4
    {
      "machine": {
        "outlets": {
          "count_n": 3
        },
        "total_items_quantity": {
          "hot_water": 500,
          "hot_milk": 500,
          "ginger_syrup": 100,
          "sugar_syrup": 100,
          "tea_leaves_syrup": 100
        },
        "beverages": {
          "hot_tea": {
            "hot_water": 200,
            "hot_milk": 100,
            "ginger_syrup": 10,
            "sugar_syrup": 10,
            "tea_leaves_syrup": 30
          },
          "cappucino": {
            "hot_water": 100,
            "ginger_syrup": 30,
            "hot_milk": 400,
            "sugar_syrup": 50,
            "tea_leaves_syrup": 30
          },
          "black_tea": {
            "hot_water": 300,
            "ginger_syrup": 30,
            "sugar_syrup": 50,
            "tea_leaves_syrup": 30
          },
          "green_tea": {
            "hot_water": 100,
            "ginger_syrup": 30,
            "sugar_syrup": 50,
            "green_mixture": 30
          }
        }
      }
    }
  end

  def test_response_4
    ["Hot Tea prepared",
      "Cappucino unavailable",
      "Black Tea prepared",
      "Green Tea cannot be prepared because Green Mixture is/are not available"]
  end

  def test_param_5
    {
      "machine": {
        "outlets": {
          "count_n": 3
        },
        "total_items_quantity": {
          "hot_water": 5000,
          "hot_milk": 5000,
          "ginger_syrup": 1000,
          "sugar_syrup": 1000,
          "tea_leaves_syrup": 1000
        },
        "beverages": {
          "hot_tea": {
            "hot_water": 200,
            "hot_milk": 100,
            "ginger_syrup": 10,
            "sugar_syrup": 10,
            "tea_leaves_syrup": 30
          },
          "hot_coffee": {
            "hot_water": 100,
            "ginger_syrup": 30,
            "hot_milk": 400,
            "sugar_syrup": 50,
            "tea_leaves_syrup": 30
          },
          "black_tea": {
            "hot_water": 300,
            "ginger_syrup": 30,
            "sugar_syrup": 50,
            "tea_leaves_syrup": 30
          }
        }
      }
    }
  end

  def test_response_5
    ["Hot Tea prepared",
      "Hot Coffee prepared",
      "Black Tea prepared"]
  end

  def test_param_6
    {
      "machine": {
        "outlets": {
          "count_n": 3
        },
        "total_items_quantity": {
          "hot_water": 5000,
          "hot_milk": 5000,
          "ginger_syrup": 1000,
          "sugar_syrup": 1000,
          "tea_leaves_syrup": 1000
        },
        "beverages": {
          "green_tea": {
            "hot_water": 100,
            "ginger_syrup": 30,
            "sugar_syrup": 50,
            "green_mixture": 30
          }
        }
      }
    }
  end

  def test_response_6
    ["Green Tea cannot be prepared because Green Mixture is/are not available"]
  end

  def test_param_7
    {
      "machine": {
        "outlets": {
          "count_n": 3
        },
        "total_items_quantity": {
          "hot_water": 5000,
          "hot_milk": 5000,
          "ginger_syrup": 1000,
          "sugar_syrup": 1000,
          "tea_leaves_syrup": 1000
        },
        "beverages": {
        }
      }
    }
  end

  def test_response_7
    []
  end
end
