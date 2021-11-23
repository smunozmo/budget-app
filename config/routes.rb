# frozen_string_literal: true

Rails.application.routes.draw do
  get 'group/show', to: "groups#show", as: "groups_show"
  get 'group/:id/show', to: "entities#show", as: "entities_show"
  get 'group/new', to: "groups#new", as: "groups_new"
  post "/users/:user_id/group", to: "groups#create", as: "user_create_group"
  devise_for :users
  root to: 'index#index'
end
