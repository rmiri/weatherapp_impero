Rails.application.routes.draw do
  root 'weather#index'
  post "/"    => "weather#index"
  get "/temperature_feel" => 'temperature_feel#index'
end
