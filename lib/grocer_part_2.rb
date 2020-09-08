require_relative './part_1_solution.rb'
require 'pry'


def apply_coupons(cart, coupons)
  applied_coupons = []
  
  coupons.each do |coupon|
    item = find_item_by_name_in_collection(coupon[:item], cart)
    item_with_coupon = "#{coupon[:item]} W/COUPON"
    item_has_coupon = find_item_by_name_in_collection(item_with_coupon, cart)
      if item && item[:count] >= coupon[:num]
        if item_has_coupon
          item_has_coupon[:count] += coupon[:num]
          item[:count] -= coupon[:num]
        else
          item_has_coupon ={
            :item => item_with_coupon,
            :price => coupon[:cost] / coupon[:num],
            :count => coupon[:num],
            :clearance => item[:clearance]
          }
        cart << item_has_coupon
        item[:count] -= coupon[:num]
        end
      end  
  end
cart  
end  

def apply_clearance(cart)
clearanced_items = []  
 cart.each do |clearance_items|
   
  if clearance_items[:clearance]
    clearanced_items[:price] * 0.8.round(2)
  end
  clearanced_items << clearance_items
end
clearanced_items
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
