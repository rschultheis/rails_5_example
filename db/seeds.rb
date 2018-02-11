# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


def build_citizens num=10
  num.times.map { Citizen.new name: Faker::Name.name, age: rand(110) }
end

Country.create name: "USA USA", population: 400000000, citizens: build_citizens(rand(50))
Country.create name: "Canada", population: rand(100)+1, citizens: build_citizens(rand(50))
Country.create name: "Mexico", population: 99999999, citizens: build_citizens(rand(50))
Country.create name: "Costa Rica", population: 121314, citizens: build_citizens(rand(50))
