Spree::Core::Engine.routes.draw do
  post 'newslatter/create', to: 'newslatter#create', as: :spree_newslatter


  # Add your extension routes here
end
