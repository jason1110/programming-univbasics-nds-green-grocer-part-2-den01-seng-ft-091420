require_relative './part_1_solution.rb'
require 'pry'


def apply_coupons(cart, coupons)
  applied_coupons_array = []
  counter = 0
  
  cart.each do |item|
    if item == coupons
binding.pry
      applied_coupons_array << coupons
    end
  end  
  
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
