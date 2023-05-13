Rails.application.routes.draw do
  root "coffee_prompts#new"
  resources :coffee_prompts, only: %i[new create show]
end
