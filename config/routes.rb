Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :product
  # post
  # get 'product'      => "product#new"
  post "product/new"     => "product#create"
  get "category/new"     =>"category#new"
  post "category/new"    =>"category#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
