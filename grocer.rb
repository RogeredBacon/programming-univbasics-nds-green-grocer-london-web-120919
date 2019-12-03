def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  
  i = 0
  item = nil
  while i < collection.length
    if collection[i][:item] == name
      item = collection[i]
    end
    i += 1
  end
  item
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  i = 0
  cart_array = []
  while i < cart.length
    if !find_item_by_name_in_collection(cart[i][:item], cart_array)
      cart_array.push(cart[i])
      cart_array[-1][:count] = 1
    else
      cart_item_i = 0
      while cart_item_i < cart_array.length
        if cart_array[cart_item_i][:item] == cart[i][:item]
          cart_array[cart_item_i][:count] += 1
        end
      cart_item_i += 1
      end
    end
    i += 1
  end
  cart_array
end

def apply_coupons(cart, coupons)
  # require 'pp'
  # pp cart
  # print 'break'
  # pp coupons
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
