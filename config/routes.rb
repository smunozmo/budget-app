# frozen_string_literal: true

Rails.application.routes.draw do
  get 'group_entities/new'
  get 'group_entities/create'
  get 'groups/new'
  get 'groups/create'
  get 'entities/new'
  get 'entities/create'
  get 'users/new'
  devise_for :users
  root to: 'index#index'
end
