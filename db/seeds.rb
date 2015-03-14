# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
book_list = [
  "Solaris","Idiota","Zbrodnia i kara","Blender foundation"
	]

book_list.each do |title|
  Book.create(title: title)
end	
	
author_list = [
	["Spinoza","45"],
	["Dawkings","67"],
	["Sokrates", "50"]
				]			

author_list.each do |name,age|
	Author.create(name: name , age: age)
end
