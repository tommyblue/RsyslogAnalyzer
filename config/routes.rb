RsyslogAnalyzer::Application.routes.draw do
  devise_for :users

  #-- API
  namespace :api do
    namespace :v1 do
      resources :logs
    end
  end

  root 'dashboard#index'
end
