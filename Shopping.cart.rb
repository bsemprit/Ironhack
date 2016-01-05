class ShoppingCart
  def initialize
    @items = []
  end
end

class Item 
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

banana = Fruit.new("Banana", 10)
orange_juice = Fruit.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum Cleaner", 150)
anchovies = Item.new("Anchovies", 2)

puts vacuum_cleaner.price
puts orange_juice.price
puts rice.price
puts banana.price
puts anchovies.price
