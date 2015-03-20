Rails.application.routes.draw do

  root "calculator#index"

  resource :calculator ,only: [:index]

  post "/execute", to: "calculator#execute", as: :execute

end