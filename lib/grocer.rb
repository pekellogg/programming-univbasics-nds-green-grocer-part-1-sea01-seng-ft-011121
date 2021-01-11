def find_item_by_name_in_collection(name, collection)
  collection.find do |e|
  	if e[:item] == name
  		e
  	end
  end
end

require 'pry'

def consolidate_cart(cart)
  receipt = cart
  cart.each do |item_hash|
    counter = 0
    while counter < cart.length do
      if receipt[counter][:count]
        receipt[counter][:count] += 1
        break
      else
        receipt[counter][:count] = 1
        break
        end
      end
    counter += 1
    end
  end
  receipt.uniq
end
