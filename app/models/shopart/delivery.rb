module Shopart
  class Delivery < ActiveRecord::Base
    has_many :orders
  end
end
