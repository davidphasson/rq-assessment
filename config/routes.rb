ActionController::Routing::Routes.draw do |map|
  map.connect '/surveys/csv', :controller => 'surveys', :action => 'csv'
  map.connect '/surveys/email', :controller => 'surveys', :action => 'email'

  map.resources :categories
  map.resources :questions
  map.resources :surveys

  # For the mere mortal, present them with a new survey to fill out
  map.root :controller => 'surveys', :action => 'new'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
