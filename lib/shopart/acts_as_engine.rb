module Shopart
  module ActsAsEngine
    extend ActiveSupport::Concern

    module ClassMethods
      def acts_as_customer
        class_eval do
          has_many :orders, class_name: 'Shopart::Order',
                            dependent: :destroy, as: :customer
          has_one :credit_card, class_name: 'Shopart::CreditCard',
                                dependent: :destroy, as: :customer
          # belongs_to :billing_address, :class_name => 'Shopart::Address', :foreign_key => 'billing_address_id'
          # belongs_to :shipping_address, :class_name => 'Shopart::Address', :foreign_key => 'shipping_address_id'
          def current_order
            order = orders.in_progress.first
            order.nil? ? orders.create : order
          end
         end                       
      end

      def acts_as_product
        #PRODUCTS.push(self.name).uniq!

        send(:has_many, :order_items, class_name: 'Shopart::OrderItem',
                                 dependent: :destroy, as: :product)
      end
    end
  end
end

ActiveRecord::Base.send(:include, Shopart::ActsAsEngine)