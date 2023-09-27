# frozen_string_literal: true

Rails.application.routes.draw do
root "pages#home"

use_doorkeeper
devise_for :users
resources :steps
resources :cards

draw :api


# namespace :api do
#   namespace :v1 do
#     scope :users, module: :users do
#       post '/', to: 'registrations#create', as: :user_registration
#     end
#     resources :steps
#     resources :cards
#     resources :users
#   end
# end

# scope :api do
#   scope :v1 do
#     use_doorkeeper do
#       skip_controllers :authorizations, :applications, :authorized_applications
#     end
#   end
# end

#   devise_for :users

# draw :api
end
