Rails.application.routes.draw do
 resources :mutters do
  collection do
    get  :list
    post :confirm
  end
  
  member do
    patch :edit_confirm
  end
 end
end
