# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating breeds'
Breed.create(
  [
    {
      'name': 'Bulldog'
    },
    {
      'name': 'Labrador'
    },
    {
      'name': 'Poodle'
    },
    {
      'name': 'Chihuahua'
    },
    {
      'name': 'Boxer'
    }
  ]
)

puts 'Creating companies'
Company.create(
  [
    {
      'name': 'Big company'
    },
    {
      'name': 'Fun company'
    },
    {
      'name': 'Purple company'
    },
    {
      'name': 'Remote company'
    },
    {
      'name': 'Different company'
    }
  ]
)

puts 'Creating dogs'
breed_ids = Breed.pluck(:id)
company_ids = Company.pluck(:id)
names = %w[Bestie Lara Nikky Rusty Wilma]

10.times do |i|
  Dog.create(name: names.sample, breed_id: breed_ids.sample, company_id: company_ids.sample)
end
