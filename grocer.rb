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
    puts "Name=#{name}, price=#{price}, clearance=#{clearance}"
  end
  return consolidatedcart
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

puts consolidate_cart(cart)
