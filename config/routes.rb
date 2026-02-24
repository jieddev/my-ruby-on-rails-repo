Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  Rails.application.routes.draw do 
    root "products#index"
    resources :products
  end

end
