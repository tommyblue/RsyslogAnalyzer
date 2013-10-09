RsyslogAnalyzer::Application.routes.draw do
  devise_for :users

  #-- API
  namespace :api do
    namespace :v1 do
      resources :hosts, only: [:index]
      resources :logs, only: [:index]
    end
  end

  root 'dashboard#index'
end
