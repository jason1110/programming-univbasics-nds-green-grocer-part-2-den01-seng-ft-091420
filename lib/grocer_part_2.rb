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
    clearance_items[:price] = clearance_items[:price] * 0.8.round(2)
  end
  clearanced_items << clearance_items
end
clearanced_items
end

def checkout(cart, coupons)
 consolidated_cart = consolidate_cart(cart)
  apply_coupons(consolidated_cart, coupons)
  apply_clearance(consolidated_cart)

  total = consolidated_cart[:price] * consolidated_cart[:count]
  
  if total > 100.00
    total = total * 0.9.round(2)
  end
total  
end
