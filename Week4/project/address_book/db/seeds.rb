# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# unless Contact.all.any?
10.times do |i|
	Contact.create(name: "Contact Name #{i}", address: "#{i}st in Miami, FL", phone_number: "0121234567", email: "email@contact.me")
end