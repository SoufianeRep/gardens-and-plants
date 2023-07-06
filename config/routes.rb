Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: [:create]
  end

  delete '/plants/:id' => 'plants#destroy', as: :plant
end
