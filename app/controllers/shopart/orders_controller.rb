require_dependency "shopart/application_controller"

module Shopart
  class OrdersController < ApplicationController
    before_action :find_order, only: :show
    before_action :find_cart, only: [:cart, :destroy, :index, :update]
    #authorize_resource


    def cart
    end

    def show
    end

    def index
      @waiting_for_processing = current_customer.orders.in_queue
      @in_delivery = current_customer.orders.in_delivery
      @delivered = current_customer.orders.delivered
    end

    def destroy
      @cart.destroy
      flash[:notice] = "Cart is empty"
      redirect_to action: :cart
    end

    def update
      @cart.order_items.each do |item|
        item.update(quantity: params["id-#{item.id}"])
      end
      @cart.set_total_price
      redirect_to root_path
    end

    private

    def find_order
      @order = Shopart::Order.find(params[:id])
    end

    def find_cart
       @cart = current_order
    end
  end
end
