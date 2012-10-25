BunchFund::Application.routes.draw do
  resources :funding_pages

  devise_for :users

  resources :home_pages
  
  root :to => 'home_pages#home'
end
