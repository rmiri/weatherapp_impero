Rails.application.routes.draw do
  root 'weather#index'
  post "/"    => "weather#index"
  resources :temperature_feel
end
