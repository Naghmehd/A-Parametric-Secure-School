Rails.application.routes.draw do

  resources :schools do
      resources :teachers do
        resources :courses do
        resources :students
        end
      end
    end

  root 'schools#index'

end
