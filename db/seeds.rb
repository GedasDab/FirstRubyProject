# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: 'Rails', email: 'rails@mail.com')
User.create(name: 'Tutorial', email: 'tutorial@mail.com')
Item.create(price: 45.25, size: 13, brand: 'Coverse', photo_url: 'Some random url', status: 1, user_id: User.first.id)
Item.create(price: 50.25, size: 47, brand: 'Vans', photo_url: 'Some random url', status: 1, user_id: User.first.id)