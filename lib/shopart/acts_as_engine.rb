module Shopart
  module ActsAsEngine
    extend ActiveSupport::Concern

    module ClassMethods
      def acts_as_customer
        send(:has_many, :orders, class_name: 'Shopart::Order',
                            dependent: :destroy, as: :customer)
        send(:has_one, :credit_card, class_name: 'Shopart::CreditCard',
                                dependent: :destroy, as: :customer)
      end

      def acts_as_product
        #PRODUCTS.push(self.name).uniq!

        send(:has_many, :order_items, class_name: 'Shopart::OrderItem',
                                 dependent: :destroy, as: :product)
        end
      end
    end
  end
end

ActiveRecord::Base.send(:include, Shopart::ActsAsEngine)