Rails.application.routes.draw do
  root 'tops#index'
  post "income_values/new(/:name)" => "income_values#new"
  resources :incomes
  resources :fixedcosts
  resources :valiablecosts
  resources :income_values
end
