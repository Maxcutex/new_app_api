Rails.application.routes.draw do
  
  namespace 'api' do
    namespace 'v1' do
      resources :stock_locals
      resources :sub_sectors
      resources :main_sectors
      resources :industries
    end
  end
end
