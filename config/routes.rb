Rails.application.routes.draw do
  root 'weather#index'
  post "/"    => "weather#index"
end
