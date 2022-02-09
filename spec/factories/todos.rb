# model factory which will provide the test data
FactoryBot.define do
    factory :todo do
      # faker generates dynamic data every time the model factory is called
      title { Faker::Lorem.word }
      created_by { Faker::Number.number(digits: 10) }
    end
  end
