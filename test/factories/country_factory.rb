
FactoryBot.define do

  factory :country do
    name "TestName"
    population { 123456789 }

    after(:create) do |country, evaluator|
      country.name = "Tanzania"
    end
  end

end
