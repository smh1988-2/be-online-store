class PurchasesController < ApplicationController

    def create
        product = Product.find_by_id(params[:product_id])
        current_stock = product.stock

        if current_stock < params[:quantity]
            render json: {error: "We don't have that quantity of this item in stock"}, status: :unprocessable_entity
        else
            purchase = Purchase.create!(purchase_params)
            product.update!(:stock => current_stock - params[:quantity])
            render json: purchase, status: :ok   
        end
        
    end

    private
    

    def purchase_params
        params.permit(:user_id, :product_id, :quantity, :total_price)
    end

end
