class ProductsController < ApplicationController

    def index
        products = Product.all
        render json: products, status: :ok
    end

    def show
        product = Product.find_by_id(params[:id])
        render json: product, status: :ok
    end

    private 
    
    def product_params
        params.permit(:id)
    end

end
