Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  namespace 'api' do
    namespace 'v1' do
      resources :stock_locals
      
      resources :main_sectors do
        resources :sub_sectors
      end
      resources :industries
    end
  end
end
