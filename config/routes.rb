Rails.application.routes.draw do

  get  '/companies/new', :to => 'companies#new', :as => :new_company
  get  '/companies/:id', :to => 'companies#show', :as => :company
  post '/companies', :to => 'companies#create'

  root 'companies#new'

end
