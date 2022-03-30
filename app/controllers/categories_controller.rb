class CategoriesController < ApplicationController

    def index
        categories = Category.all
        render json: categories, status: :ok
    end

    # Render the PRODUCTS from this category
    def show 
        products = Product.where(:category_id => params[:id])
        render json: products, status: :ok
    end

    private 
    
    def category_params
        params.permit(:id)
    end


end
