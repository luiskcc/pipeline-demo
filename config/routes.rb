Rails.application.routes.draw do
  get 'leads/index'
  root "leads#index"
end
