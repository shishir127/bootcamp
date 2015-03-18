Rails.application.routes.draw do

  root "calculator#index"

  resource :calculator ,only: [:index, :update] #do
  #   collection do
  #     put :add, :action => :add
  #     put :subtract
  #     put :multiply
  #     put :divide
  #   end
  # end

  # put "/add", to: "calculator#add", as: :add

end