# spec/factories/users.rb
FactoryBot.define do
    factory :user do
      name { Faker::Name.name }
      email 'testuser@gmail.com'
      password '123456'
    end
  end
