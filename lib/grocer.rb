def find_item_by_name_in_collection(name, collection)
  collection.find do |e|
  	if e[:item] == name
  		e
  	end
  end
end

# require 'pry'

# def consolidate_cart(cart)
#   receipt = cart
#   cart.each do |item_hash|
#     counter = 0
#     while counter < cart.length do
#       if receipt[counter][:count]
#         receipt[counter][:count] += 1
#         break
#       else
#         receipt[counter][:count] = 1
#         break
#         end
#       end
#     counter += 1
#     end
#   end
#   receipt.uniq
# end

def consolidate_cart(cart)
 new_cart = []
 cart.map do |og_e|
   if !find_item_by_name_in_collection(og_e[:item], new_cart)
     new_cart.push(og_e)
     og_e[:count] = 1
   else
     new_cart.map do |e|
     if og_e[:item] == e[:item]
     e[:count] += 1
     end
   end
 end
end
new_cart
end
