require 'test_helper'
require 'helpers/beverages_controller_test_helper'

class BeveragesControllerTest < ActionDispatch::IntegrationTest
  include BeveragesControllerTestHelper
  test 'serve beverages' do
    (1..6).each do |n|
      post '/prepare', params: send("test_param_#{n}".to_sym)
      result = eval(response.body)[:data]
      assert_response :success
      assert result == send("test_response_#{n}".to_sym)
    end
  end
end
