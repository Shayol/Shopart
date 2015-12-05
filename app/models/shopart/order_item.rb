module Shopart
  class OrderItem < ActiveRecord::Base
    belongs_to :product, polymorphic: true
    belongs_to :order

    validates :price, presence: true, numericality: true
    validates :quantity, presence: true
  end
end
