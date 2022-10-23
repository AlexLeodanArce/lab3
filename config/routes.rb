Rails.application.routes.draw do
  resources :monsters, only: [:index, :show, :destroy]

  root "monsters#index"
  delete "/monsters/:id", to: "monsters#destroy"
end
