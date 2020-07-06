class CustomersController < ApplicationController

    def index
        customers = customer.all
        render json: customers, except: [:created_at, :updated_at]
    end

    def show
        customer = customer.find(params[:id])
        render json: customer, except: [:created_at, :updated_at]
    end
    
end
