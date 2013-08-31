# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Country.all.blank?
	Country.create!([{name: "El Salvador"},{name: "Guatemala"},{name: "Costa Rica"}, {name: "Honduras"},{name: "Panama"},{name: "Nicaragua"},{name: "Mexico"}])
end
