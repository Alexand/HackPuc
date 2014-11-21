Rails.application.routes.draw do
  get 'relatorios/index'

  devise_for :users
  resources :tipos_contatos

  resources :contatos

  resources :chamadas

  resources :paradas do
    collection { post :import }
  end

  get '/paradas_proximas_por_linha/:lat/:long/:linha', to: 'paradas#proximasPorLinha'
  get '/paradas_proximas_por_bairro/:lat/:long/:bairro', to: 'paradas#proximasPorBairro'
  get '/chamadas_por_status/:status/', to: 'chamadas#porStatus'

  get '/relatorios', to: 'relatorios#index'
  get '/email/:user/', to: 'contatos#formResposta', as: 'form_resposta'
  post '/contatos/contactResponse/', to: 'contatos#contactResponse', as: 'contactResponse'

  match '/contacts/:email',     to: 'contacts#new',             via: 'get', as:'contactsNew'
  resources "contacts", only: [:new, :create]

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'paradas#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
