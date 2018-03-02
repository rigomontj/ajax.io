# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Email.delete_all

Email.create!([
	{object: "Open now - You've been awarded $2000 !", 
		body:"Please send me $1000 to get your code"},
	{object: "This kitten is so funny - share this video with your friend", 
		body:"Meaeeow"},
	{object: "THP is hiring an office manager in San Francisco", 
		body:"Charles Dacquay : 'We are gonna teach programming to those dumbass Silicon Valley startups CEOs'"}
])
