Rails.application.routes.draw do

  root 'coatroom#index'
  get 'coatroom/search' => 'coatroom#search'
  get '/dropoff/:id' => 'coatroom#dropoff'
  get '/confirmation/:id' => 'coatroom#confirmation'

  get 'sessions/new' => 'sessions#new', as: 'log_in'
  post 'sessions' => 'sessions#create'
  get 'sessions/delete' => 'sessions#destroy'
  delete 'sessions/new' => 'sessions#destroy', as: 'log_out'

  get 'sessions/new_checker' => 'checker_sessions#new', as: 'log_in_checker'
  post 'checker_sessions' => 'checker_sessions#create'
  get 'checker_sessions/delete' => 'checker_sessions#destroy'
  delete 'checker_sessions' => 'checker_sessions#destroy', as: 'checker_log_out'

  get 'profiles' => 'profiles#index'

  resources :users
  resources :checkers
  resources :hold_records
end
