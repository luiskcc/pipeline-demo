Rails.application.routes.draw do
  resources :leads do
    member do
      put 'update_stage'
    end
  end
  root "leads#index"
end
