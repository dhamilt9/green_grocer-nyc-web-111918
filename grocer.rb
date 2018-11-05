cart=[
  {"AVOCADO" => {:price => 3.0, :clearance => true }},
  {"AVOCADO" => {:price => 3.0, :clearance => true }},
  {"KALE"    => {:price => 3.0, :clearance => false}}
]

def consolidate_cart(cart)
  consolidatedcart={}
  cart.each do |item|
    name=item.keys[0]
    price=item.values[0][:price]
    clearance=item.values[0][:clearance]
    if consolidatedcart.keys.include?(name)
      consolidatedcart[name][:count]=consolidatedcart[name][:count]+1
    else
      consolidatedcart[name]={}
      consolidatedcart[name][:price]=price
      consolidatedcart[name][:clearance]=clearance
      consolidatedcart[name][:count]=1
    end
  end
  return consolidatedcart
end

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    bundles=0
    if cart.keys.include?(coupon[:item])
      item=coupon[:item]
      number=cart[item][:count]
      bundlesize=coupon[:num]
      bundlecost=coupon[:cost]
      couponstring=item+" W/COUPON"
      cart[couponstring]={price: bundlecost, clearance: cart[item][:clearance], count:bundles}
    end
  end
  return cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
