# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


goddess_tour = Concert.create(artist: "BANKS", venue: "Grand Central", city: "Miami", date: DateTime.new(2016, 6, 1), price: 30.00, description: "Computational processes are abstract beings that inhabit computers. As they evolve, processes manipulate other abstract things called data. The evolution of a process is directed by a pattern of rules called a program. People create programs to direct processes. In effect, we conjure the spirits of the computer with our spells.")
dog_days_tour = Concert.create(artist: "Florence and the Machine", venue: "American Airlines Arena", city: "Miami", date: DateTime.new(2016, 2, 6), price: 100.00, description: "Computational processes are abstract beings that inhabit computers. As they evolve, processes manipulate other abstract things called data. The evolution of a process is directed by a pattern of rules called a program. People create programs to direct processes. In effect, we conjure the spirits of the computer with our spells.")
tropical_tour = Concert.create(artist: "Thomas Jack", venue: "Bardot", city: "Miami", date: DateTime.new(2016, 5, 1), price: 10.00, description: "Computational processes are abstract beings that inhabit computers. As they evolve, processes manipulate other abstract things called data. The evolution of a process is directed by a pattern of rules called a program. People create programs to direct processes. In effect, we conjure the spirits of the computer with our spells.")
swedish_tour = Concert.create(artist: "Joris Voorn", venue: "Electric Pickle", city: "Miami", date: DateTime.new(2016, 2, 15), price: 20.00, description: "Computational processes are abstract beings that inhabit computers. As they evolve, processes manipulate other abstract things called data. The evolution of a process is directed by a pattern of rules called a program. People create programs to direct processes. In effect, we conjure the spirits of the computer with our spells.")


# comment1 = goddess_tour.Comment.create(name: "Bobby Flay", email: "hestheflay@flay.com", body: "This place is the best!!")
# comment2 = goddess_tour.Comment.create(name: "Anais", email: "shestheflay@flay.com", body: "This place is the best!!")

# comment1 = dog_days_tour.Comment.create(name: "Bobby Flay", email: "hestheflay@flay.com", body: "This place is the best!!")
# comment2 = dog_days_tour.Comment.create(name: "Anais", email: "shestheflay@flay.com", body: "This place is the best!!")

# comment1 = tropical_tour.Comment.create(name: "Bobby Flay", email: "hestheflay@flay.com", body: "This place is the best!!")
# comment2 = tropical_tour.Comment.create(name: "Anais", email: "shestheflay@flay.com", body: "This place is the best!!")

# comment1 = swedish_tour.Comment.create(name: "Bobby Flay", email: "hestheflay@flay.com", body: "This place is the best!!")
# comment2 = swedish_tour.Comment.create(name: "Anais", email: "shestheflay@flay.com", body: "This place is the best!!")