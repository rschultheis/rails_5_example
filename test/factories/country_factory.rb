FactoryBot.define do
  factory :country do
    name { Faker::GameOfThrones.house }
    population { rand(1_000_000_000) }

    factory :country_with_citizens do
      transient { citizen_count 2 }

      after(:create) do |country, evaluator|
        create_list(:citizen, evaluator.citizen_count, country: country)
      end
    end
  end
end
