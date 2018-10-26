Rails.application.routes.draw do
 resources :mutters do
  collection do
    get  :list
    post :confirm
  end
 end
end
