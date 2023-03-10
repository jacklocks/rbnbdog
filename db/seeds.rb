# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.creat10e([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
10.times do
    dogsitter = Dogsitter.create!(
        name: Faker::Name.first_name,
    )
end

10.times do
    dog = Dog.create!(
        name: Faker::Name.first_name,
    )
end

10.times do
    strolls = Stroll.create!(
    dogsitter: Dogsitter.all.sample,
    dog: Dog.all.sample,
    )
end

