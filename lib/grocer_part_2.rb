require_relative './part_1_solution.rb'
require 'pry'


def apply_coupons(cart, coupons)
binding.pry
  applied_coupons = []
  
  coupons.each do |coupon|
    item = find_item_by_name_in_collection(coupon[:item], cart)
    item_with_coupon = "#{coupon[:item]} W/COUPON"  
      if item
  end
  
  cart.each do |item|
    if item == coupons
      item[:item] = +"W/COUPON"
      applied_coupons << coupons
    end
  end  
applied_coupons
binding.pry 
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
