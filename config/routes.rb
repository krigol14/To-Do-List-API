Rails.application.routes.draw do
  # items are nested in the todos resource
  # this ensure the one to many relationship these two models have
  resources :todos do
    resources :items
  end
end
