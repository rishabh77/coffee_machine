class BeveragesController < ApplicationController
  skip_before_action :verify_authenticity_token
  include BeveragesHelper
  include IngredientsHelper
  # prepare index which will route requests coming to /prepare
  # see routes.rb
  def prepare
    permit_params
    # initializing the ingredients with values passed in params
    init_ingredients_quantity(params['machine']['total_items_quantity'])
    # response will include whether each beverage was prepared or could not be prepared
    response = prepare_beverages(params['machine']['beverages'])
    render json: { message: 'Order', data: response }
  end

  private

  def permit_params
    params.require(:machine).permit!
  end
end
