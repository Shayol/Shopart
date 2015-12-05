module Shopart
  class Address < ActiveRecord::Base
    validates :address, presence: true
    validates :zipcode, presence: true
    validates :city, presence: true
    validates :phone, presence: true, length: { minimum: 5, maximum: 12 }
    validates :lastname, presence: true
    validates :firstname, presence: true
    validates :country, presence: true
  end
end
