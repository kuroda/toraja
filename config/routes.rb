Toraja::Application.routes.draw do
  root to: "top#index"
  resources :blocks, only: [ :create, :update ]
end
