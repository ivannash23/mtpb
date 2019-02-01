Rails.application.routes.draw do
  root "trip_plans#index"
  
  resources :trip_plans do
    resources :days
  end
end
