# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.delete_all
Picture.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('users')
ActiveRecord::Base.connection.reset_pk_sequence!('pictures')

2.times do |i|
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: 'qwerty', email: "user#{i}@yopmail.com", password: 'qwerty')
end

puts 'Users created'

2.times do |i|
  User.create!(first_name:"gros",last_name:"gros", description:"je suis admin", email:"admin#{i}@admin.com", password:"qwerty", is_superadmin: true)
end

puts 'Users created'

2.times do |_i|
  Picture.create!(name: Faker::Name.first_name, description: 'Moi,Moche et Méchant. Allez acheter cette putain de photo !', price: rand(1..30), condition: 'good', administrator_id: User.all.sample.id)
end

puts 'Pictures created'
