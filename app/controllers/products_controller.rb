class ProductsController < ApplicationController
    def index
       fetch = Product.all
       render json: fetch
    end

    def show
        found = Product.find(params[:id])
        render json: found
    end

    def create
        product = Product.new(name: params[:name], details: params[:details], customers_id: params[:customers_id])
        if product.save
            render json: {data: product, status:200}
        else
            render json: {error: product.errors.full_messages, status: 404}
        end	
    end

    def customer_create
        customer = Customer.new(name: params[:name], address: params[:address])
        if customer.save
            render json: {data: customer}
        else
            render json: {error: customer.errors.full_messages}
        end	
    end

end
