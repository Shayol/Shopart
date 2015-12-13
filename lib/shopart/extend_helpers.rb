module Shopart
module ExtendHelpers
    def acts_as_current_customer
      # customer = customer.to_s
      # attr_reader customer
      class_eval do 
        helper Shopart::Engine.helpers 
        helper_method :current_customer
      end
      #class_eval("alias_method :current_customer, #{customer}.to_sym")
    end
end
end
ActionController::Base.send(:extend, Shopart::ExtendHelpers)