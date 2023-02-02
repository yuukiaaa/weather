Rails.application.routes.draw do
  root "tops#index"
  resources :tops, only: [:index, :show]
  post "tops" => "tops#index"
end
