# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user1 = User.create(name: "Anna", email: "ana@email.com", password: "123123123", password_confirmation: "123123123")
user2 = User.create(name: "Matt", email: "matt@email.com", password: "123123123", password_confirmation: "123123123")
