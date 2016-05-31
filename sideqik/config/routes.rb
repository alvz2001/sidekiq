Rails.application.routes.draw do
  root 'users#index'
  get "/new_mailer/news_welcome", to: "users#create"
  resources :users
end
