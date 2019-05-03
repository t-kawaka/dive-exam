Rails.application.routes.draw do
  resources :estates
  root to: "estates#index"
end
