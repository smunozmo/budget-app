# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root to: 'groups#show', as: :authenticated_root
    end
    unauthenticated :user do
      root to: 'index#index', as: :unauthenticated_root
    end
  end
  
  get 'group/show', to: "groups#show", as: "groups_show"
  get 'group/:id/show', to: "entities#show", as: "entities_show"
  get 'group/new', to: "groups#new", as: "groups_new"
  get 'entity/new', to: "entities#new", as: "entity_new"
  post "/users/:user_id/group", to: "groups#create", as: "user_create_group"
  post "/users/:user_id/entity", to: "entities#create", as: "user_create_entity"
  root to: 'index#index'

  
end
