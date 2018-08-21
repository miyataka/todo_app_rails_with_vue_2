Rails.application.routes.draw do
    root to: 'tasks#index'

    get '/inbox', to: 'tasks#index'
    get '/today', to: 'tasks#index'
    get '/next7days', to: 'tasks#index'
    get '/overdue', to: 'tasks#index'

    namespace :api do
        namespace :v1, format: 'json' do
            resources :tasks, only: [:index, :create, :update]
        end
    end
end
