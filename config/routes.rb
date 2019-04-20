Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :notes
      resources :users

      post "/login", to: "auth#login"
      get "/auto_login", to: "auth#get_current_user"
    end
  end

end
