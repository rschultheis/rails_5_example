FactoryBot.define do
  factory :citizen do
    name { Faker::Name.name }
    age { rand(150) }
    association :country
  end
end
