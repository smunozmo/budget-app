class EntitiesController < ApplicationController
  def show
    @entities = Entity.all
    @user = current_user.id
  end
  
  def new
  end

  def create
  end
end
