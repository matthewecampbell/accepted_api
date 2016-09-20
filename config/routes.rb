Rails.application.routes.draw do

  namespace :api, defaults: {format: "json" } do
    namespace :v1 do
      resources :colleges, only: [:index, :show]
      resources :recommended_colleges, only: [:index]
    end
  end
end
