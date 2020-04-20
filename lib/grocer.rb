grocery_shelf = [
  { :item => "CANNED BEANS", :price => 3.00, :clearance => true },
  { :item => "CANNED CORN", :price => 2.50, :clearance => false },
  { :item => "SALSA", :price => 1.50, :clearance => false },
  { :item => "TORTILLAS", :price => 2.00, :clearance => false },
  { :item => "HOT SAUCE", :price => 1.75, :clearance => false }
]

shopping_cart = [
  { :item => "CANNED BEANS", :price => 3.00, :clearance => true },
  { :item => "CANNED CORN", :price => 2.50, :clearance => false },
  { :item => "SALSA", :price => 1.50, :clearance => false },
  { :item => "TORTILLAS", :price => 2.00, :clearance => false },
  { :item => "HOT SAUCE", :price => 1.75, :clearance => false },
  { :item => "HOT SAUCE", :price => 1.75, :clearance => false },
  { :item => "HOT SAUCE", :price => 1.75, :clearance => false }

]


def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.find { |elem| elem[:item]== name}


end

# puts find_item_by_name_in_collection("SALSA", grocery_shelf)

puts find_item_by_name_in_collection("no", grocery_shelf) || "Hello"

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart = []

  cart.each { |cart_item|
    cart_item_name = cart_item[:item]
    if !find_item_by_name_in_collection(cart_item_name, new_cart)
      count = cart.select{ |selector| selector[:item] == cart_item_name }.length
      new_cart.push(cart_item.merge({:count => count}))
    end
  }

  new_cart

end
 
# puts shopping_cart.select{ |selector| selector[:item] =="HOT SAUCE"}.length

# puts consolidate_cart(shopping_cart)



  