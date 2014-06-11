Scheduler::Application.routes.draw do

  root "welcome#home"
  resources :users
  get "meetings/new"
  get "meetings/edit"
  get "meetings", to: 'meetings#index', as: 'meetings'
  get "meetings/show"

  get "execs/new"
  get "execs/edit"
  get "execs/show"
  get "execs" => "execs#index"
end
