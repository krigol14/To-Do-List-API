# model factory which will provide the test data for the user's name and credentials
FactoryBot.define do
    factory :user do
      name { Faker::Name.name }
      email 'testuser@gmail.com'
      password '123456'
    end
  end
