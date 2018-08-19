Rails.application.routes.draw do
    root to: 'tasks#index'

    get '/inbox', to: 'tasks#index'
    get '/today', to: 'tasks#index'
    get '/next7days', to: 'tasks#index'
    get '/overdue', to: 'tasks#index'
end
