# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

item = Item.create(name: "Widget", balance: 15)

transaction = Transaction.create(item_id: 1, amount: 3, note: "purchase from Oregon COC", kind: "add", date: Date.today)