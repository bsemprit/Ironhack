# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tournament1 = Tournament.create(name: "The Third Plate")
tournament2 = Tournament.create(name: "Thesis")
tournament3 = Tournament.create(name: "The Greatest Game in the World")

player1 = Player.create(name: "Anais")
player2 = Player.create(name: "Jennifer")

player3 = Player.create(name: "Jake")

player4 = Player.create(name: "Faraz")