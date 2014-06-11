Scheduler::Application.routes.draw do

  root "welcome#home"
  resources :users
  resources :sessions
  get "meetings/new"
  get "meetings/edit"
  get "meetings", to: 'meetings#index', as: 'meetings'
  get "meetings/:id", to: 'meetings#show', as: 'meeting'
  get "sign_up" => "sessions#new", :as => "sign_up"

  get "execs/new"
  get "execs/edit"
  get "execs/show"
  get "execs" => "execs#index"

end
