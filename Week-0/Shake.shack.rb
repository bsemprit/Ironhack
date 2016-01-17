class MilkShake
	attr_reader :price_of_milkshake, :Milkshake
  def initialize
    @base_price = 3
    @ingredients = [ ]        
  end

    def add_ingredient(ingredient) #adds an ingredient to ingredients array
    @ingredients.push(ingredient)
  end

  def price_of_milkshake
  #Let's establish what our counter should be before we start adding ingredients into the mix
  total_price_of_milkshake = @base_price
  #Add each ingredients price to our total
  @ingredients.each do |ingredient|
    total_price_of_milkshake += ingredient.price
  end
  #return  our total price to whoever called for it
   total_price_of_milkshake
end
end

class Ingredient
	attr_reader :name, :price #allows ingredient attributes to be read outside of ingredient call
  def initialize(name, price)
    @name = name
    @price = price
  end
end

class My_Shack_Shop
	#need to read from milkshake attributes so create attr_reader
	def initialize 
	@milkshakes_list = []
	end

	def add_milkshakes(milkshake) #add Milkshake to list of total 
		@milkshakes_list.push(milkshake) 
	end

	def checkout
		total_checkout = 0 #start with first price
		#need to add all the prices to total_checkout
		@milkshakes_list.each do |milkshake|
			total_checkout += milkshake.price_of_milkshake
		end
		total_checkout
	end
end


nizars_milkshake = MilkShake.new #creates new milkshake
banana = Ingredient.new("Banana", 2) #creates new ingredient
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana) #adds ingredient to milkshake ingredient array
nizars_milkshake.add_ingredient(chocolate_chips)

puts nizars_milkshake.price_of_milkshake #should show the ending total price of the milkshake

myshack = My_Shack_Shop.new
myshack.add_milkshakes(nizars_milkshake)
puts myshack.checkout
