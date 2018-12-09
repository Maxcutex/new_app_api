Rails.application.routes.draw do
  
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
