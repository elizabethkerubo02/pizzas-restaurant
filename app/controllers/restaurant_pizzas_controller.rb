class RestaurantPizzasController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create]

    rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid

    

    def create
        restaurant_pizza = RestaurantPizza.create!(restaurant_pizzas_params)
    
        render json: restaurant_pizza.pizza, status: :created
    
      end
    #   def destroy
    #     pizza = RestaurantPizza.find(params[:id])
    #     pizza.destroy
    #     head :no_content
    # end


    private
    def restaurant_pizzas_params
        params.permit(:price, :restaurant_id, :pizza_id)
    end

    def render_record_invalid(exception)
        render json: { errors: [ exception.record.errors.full_messages ] }, status: :unprocessable_entity
      end
end
