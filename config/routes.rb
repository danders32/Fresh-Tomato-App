FreshTomato::Application.routes.draw do


  # CRUD for movies
  resources :movies
  root :to => redirect('/movies')
  
  resources :actors
end
