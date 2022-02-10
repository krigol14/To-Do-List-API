# model factory which will provide the test data for the todo items
FactoryBot.define do
    factory :item do
      # faker generates dynamic data every time the model factory is called 
      name { Faker::Movies::StarWars.character }
      done false
      todo_id nil
    end
  end
