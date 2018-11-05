cart=[
  {"AVOCADO" => {:price => 3.0, :clearance => true }},
  {"AVOCADO" => {:price => 3.0, :clearance => true }},
  {"KALE"    => {:price => 3.0, :clearance => false}}
]

def consolidate_cart(cart)
  consolidatedcart={}
  cart.each do |item|
    name=item[:item]
    price=item[:price]
    clearance=item[:clearance]
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
    if cart.keys.include?(coupon[:item])
      bundles=0
      item=coupon[:item]
      number=cart[item][:count]
      bundlesize=coupon[:num]
      bundlecost=coupon[:cost]
      while cart[item][:count]>=bundlesize
        cart[item][:count]=cart[item][:count]-bundlesize
        bundles+=1
      end
      couponstring=item+" W/COUPON"
      cart[couponstring]={price: bundlecost, clearance: cart[item][:clearance], count:bundles}
    end
  end
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
