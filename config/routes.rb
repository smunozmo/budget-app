# frozen_string_literal: true

Rails.application.routes.draw do
  get 'group/show', to: "groups#show", as: "groups_show"
  get 'group/:id/show', to: "entities#show", as: "entities_show"
  devise_for :users
  root to: 'index#index'
end
