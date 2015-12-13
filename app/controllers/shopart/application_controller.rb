module Shopart
  class ApplicationController < ::ApplicationController
    def current_order           
      order = current_customer.orders.in_progress.first
      order.nil? ? current_customer.orders.create : order
    end
  end
end
