# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# unless Project.all.any?
25.times do |i|
	p = Project.create(name:"Project #{i}", description: "Hello #{i}")
	p.entries.create(hours: i, minutes: 10 * i)
end

# Project.create(name:"Ironhack", description: "Ironhack is awesome")
# Project.create(name: "Time Tracking app")
# Project.create name:"Recipes", description:"Awesome food."
