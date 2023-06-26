class RestaurantsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:destroy]

    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_response

    def index
        restaurants = Restaurant.all
        render json: restaurants, status: :ok 
    end

    def show
        render json: find_restaurant, except: [:created_at, :updated_at], include: :pizzas
    end 

    def destroy 
        restaurant = find_restaurant 
        restaurant.destroy
        head :no_content 
      end



    private
    def find_restaurant
        restaurant = Restaurant.find(params[:id])
    end
    def record_not_found_response(exception)
        render json: {error: "Restaurant not found"}, status: :not_found
      end
end
