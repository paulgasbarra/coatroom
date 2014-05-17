# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 # t.string :name
 #      t.string :address
 #      t.longitude :float
 #      t.latitude :float
 #      t.integer :phone_number
 #      t.string :email
 #      t.string :password
 #      t.integer :bank_account
 #      t.integer :bank_routing_number
 #      t.boolean :storing
 #      t.decimal :ammount_earned

Checker.create(name: 'Hope Chest', address: '915 Broadway, New York, NY', latitude: '40.7415532', longitude: '-73.9896066', phone_number: '5554561234', email: 'hopechest@gmail.com', password: 'xxxxxx', bank_routing_number: 123456, bank_account: 88888888, storing: false, ammount_earned: 0.00)
Checker.create(name: 'Earl Grey', address: '319 W 30th St, New York, NY', latitude: '40.749841', longitude: '-73.995912', phone_number: '5559081234', email: 'thisguy@gmail.com', password: 'xxxxxx', bank_routing_number: 123456, bank_account: 88888888, storing: false, ammount_earned: 0.00)
Checker.create(name: 'Dorn Mann', address: '7 E 43rd St, New York, NY', latitude: '40.754105', longitude: '-73.979427', phone_number: '5553211234', email: 'mannd@gmail.com', password: 'xxxxxx', bank_routing_number: 123456, bank_account: 88888888, storing: false, ammount_earned: 0.00)

#   t.string :name
#   t.integer :phone_number
#   t.string :email
#   t.string :password
#   t.integer :credit_card
#   t.boolean :stored
#   t.integer :favorite

User.create(name: Faker::Name.name, phone_number: Faker::Number.number(10), email: Faker::Internet.email, password: Faker::Internet.password, credit_card: Faker::Business.credit_card_number)
User.create(name: Faker::Name.name, phone_number: Faker::Number.number(10), email: Faker::Internet.email, password: Faker::Internet.password, credit_card: Faker::Business.credit_card_number)
User.create(name: Faker::Name.name, phone_number: Faker::Number.number(10), email: Faker::Internet.email, password: Faker::Internet.password, credit_card: Faker::Business.credit_card_number)
