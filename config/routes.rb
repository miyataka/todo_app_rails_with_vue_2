Rails.application.routes.draw do
    root to: 'home#index'

    get '/inbox', to: 'home#index'
    get '/today', to: 'home#index'
    get '/next7days', to: 'home#index'
    get '/overdue', to: 'home#index'

    namespace :api do
        namespace :v1, format: 'json' do
            resources :tasks, only: [:index, :create, :update]
        end
    end
end
