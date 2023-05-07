# frozen_string_literal: true

Rails.application.routes.draw do
  get 'insurances/show'
  get 'insurances/query'
  get 'tourists/show'
  get 'tourists/query'
  get 'people/show'
  get 'people/query'
  root 'home#schema'
  get 'home/info'

  get 'clients/show'
  get 'workers/show'
  get 'hotels/show'
  get 'trips/show'
  get 'countries/show'
  get 'cities/show'
  get 'airports/show'
  get 'aircompanies/show'
  get 'flights/show'
  get 'orders/show'

  post 'clients/query'
  post 'workers/query'
  post 'hotels/query'
  post 'countries/query'
  post 'cities/query'
  post 'airports/query'
  post 'aircompanies/query'
  post 'flights/query'
  post 'trips/query'
  post 'orders/query'

  post 'clients/add_data'
  post 'workers/add_data'
  post 'countries/add_data'
  post 'cities/add_data'
  post 'hotels/add_data'
  post 'airports/add_data'
  post 'aircompanies/add_data'
  post 'flights/add_data'
  post 'trips/add_data'
  post 'orders/add_data'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
