BunchFund::Application.routes.draw do
  devise_for :users

  get '/home', { :controller => "HomePages", :action => "home" }
  
  get '/about', { :controller => "HomePages", :action => "about" }
  
  get '/help', { :controller => "HomePages", :action => "help" }
  
  get '/contact_us', { :controller => "HomePages", :action => "contact_us" }
  
  get  '/blog', { :controller => "HomePages", :action => "blog" }
  
  get '/build_with_us', {:controller => "HomePages", :action => "build_with_us" }

  
  root :to => 'home_pages#home'
end
