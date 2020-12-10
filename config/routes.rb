Rails.application.routes.draw do


  root to: "supervisions#index"
  # CLEARANCE ROUTES START
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]
  resource :supervisions

  resources :users, controller: "users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"
  # CLEARANCE ROUTES STOP
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
