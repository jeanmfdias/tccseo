Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: "home#index"

  match "sitemap.xml" => "home#sitemap", via: [:get]

  match "calendario" => "calendarios#index", via: [:get]
  match "sobre" => "home#sobre", via: [:get]
  match ":categoria" => "categorias#index", via: [:get]
  match "evento/:titulo" => "calendarios#show", via: [:get]
  match ":categoria/:artigo" => "artigos#show", via: [:get]
  
end
