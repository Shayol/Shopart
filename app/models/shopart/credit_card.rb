module Shopart
  class CreditCard < ActiveRecord::Base
    belongs_to :customer, polymorphic: true
    belongs_to :order, class_name: 'Shopart::Order'

    EXPIRATION_MONTH = (1..12).map(&:to_s)
    EXPIRATION_YEAR = (Date.today.year..(Date.today.year + 10)).map(&:to_s)

    validates :number, :expiration_month, :expiration_year, :firstname, :lastname, :CVV, presence: true
    validates :expiration_month, inclusion: { in: EXPIRATION_MONTH }
    validates :expiration_year, inclusion: { in: EXPIRATION_YEAR }
    validates :CVV, length: 3..4
    validates :number, length: 13..16
  end
end
