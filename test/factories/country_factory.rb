FactoryBot.define do
  factory :country do
    name { Faker::GameOfThrones.house }
    population { rand(1_000_000_000) }
  end
end
