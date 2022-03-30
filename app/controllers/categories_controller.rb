class CategoriesController < ApplicationController

    def index
        categories = Category.all
        render json: categories, status: :ok
    end

    def show
        category = Category.find_by_id(params[:id])
        render json: category, status: :ok
    end

    private 
    
    def category_params
        params.permit(:id)
    end


end
