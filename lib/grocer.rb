def find_item_by_name_in_collection(name, collection)
  count = 0
  while count < collection.length
    if collection[count][:item] == name
      return collection[count]
    end
    count += 1
  end
end


def consolidate_cart(cart)
new_cart = []
count = 0
while count < cart.length
  new_cart_item = find_item_by_name_in_collection(cart[count][:item], new_cart)
  if new_cart_item != nil
    new_cart_item[:count] += 1
  else
    new_cart_item = {
      :item => cart[count][:item],
      :price => cart[count][:price],
      :clearance => cart[count][:clearance],
      :count => 1
    }
    new_cart << new_cart_item
    end
  count +=1
  end
  new_cart
end
