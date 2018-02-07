Rails.application.routes.draw do
  devise_for :users
  # devise_for :users
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


get '/', to: 'main#chat'

root to: "main#chat"

devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

end
