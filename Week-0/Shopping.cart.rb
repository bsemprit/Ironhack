class ShoppingCart
	
  def initialize
      @items = []
  end

  def add_item(item) #Second Iteration: add items
      #Add your item to @items
      @items.push(item)
  end
  #Third Iteration: create a checkout method that will total up the 
  #cost of all of the items in your cart.
  def checkout
  	total_price = 0 #start with 0 total
  	@items.each do |item|
  		total_price += item.price
  	end
  	#Fourth Iteration: If there are 5 or more items, 10% discount
  	if @items.length >= 5
  		total_price = total_price * 0.9
  	end
  	puts "Your total today is $#{total_price}. Have a nice day!"
  end
end

class Item 
	attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end

  def price
      #Your beautiful code goes here
      price = @price
  end
end


class Houseware < Item
  def price
      #Hmmm maybe this changes somehow..
      possible_discount = @price
      if possible_discount > 100
      	possible_discount = possible_discount * 0.95
      else
      	possible_discount 
  end
end
end

class Fruit < Item
  def price
      #Something special may go here too...
      possible_discount = @price
    t = Time.now
    if t.saturday? == true || t.sunday? == true 
      	possible_discount = possible_discount * 0.9
    else 
    	possible_discount 
    end
  end
end

# #By default, items will have no discount.
# Fruits have no discount during weekdays but on weekends they have a 10% discount.
# Housewares have no discount unless their unit price is more than 100€ / $100. If the price is greater than 100€ / $100, there will be a 5% discount.

#First iteration: 
# Create a shop that sells the following items

# Bananas: 10€ / $10 each
# Orange Juice: 10€ / $10 each
# Rice: 1€ / $1 per unit
# Vacuum Cleaner: 150€ / $150
# Anchovies: 2€ / $2 each

# banana = Fruit.new("Banana", 10)
# orange_juice = Fruit.new("Orange Juice", 10)
# rice = Item.new("Rice", 1)
# vacuum_cleaner = Houseware.new("Vacuum Cleaner", 150)
# anchovies = Item.new("Anchovies", 2)

# puts vacuum_cleaner.price
# puts orange_juice.price
# puts rice.price
# puts banana.price
# puts anchovies.price

joshs_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10)
vaccuum = Houseware.new("Vaccuum", 150)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.add_item(banana)
joshs_cart.add_item(vaccuum)
joshs_cart.add_item(anchovies)
joshs_cart.checkout
