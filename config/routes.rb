Rails.application.routes.draw do
  resources :world_cities
  get 'philly_crimes/map'
  get 'philly_crime/map'
  resources :philly_crimes
  resources :lat_crimes
  resources :la_crimes
  resources :denver_crimes
  resources :chicago_crimes
  resources :chicago2008_crimes
  resources :crimes
  resources :map
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
