# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

clothes = Category.create(name: 'Clothes')
furniture = Category.create(name: 'Furniture')
groceries = Category.create(name: 'Groceries')
electronics = Category.create(name: 'Electronics')

tshirt = Product.new(name: 'tshirt', price: 300)
tshirt.category = clothes
tshirt.save
mirror = Product.new(name: 'mirror', price: 220.95)
mirror.category = furniture
mirror.save
pillow = Product.new(name: 'pillow', price: 90)
pillow.category = clothes
pillow.save
light = Product.new(name: 'light', price: 10.95)
light.category = electronics
light.save

Address.create([
  {state: "Maharashtra"},
  {state: "MP"},
  {state: "UP"}
])

