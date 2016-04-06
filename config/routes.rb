Rails.application.routes.draw do

  resources :schools do
      resources :teachers do
        resources :students do
          resources :courses do
        end
        end
      end
    end

  root 'schools#index'

end
