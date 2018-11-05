def consolidate_cart(cart)
  consolidatedcart={}
  cart.each do |item, itemdata|
    if consolidatedcart.keys.include?(item)
      consolidatedcart[item][:count]+=1
    else
      consolidatedcart[item]=itemdata
      consolidatedcart[item][:count]=>1
    end
  end
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
