class EntitiesController < ApplicationController
  def show
    @group = Group.find(params[:id])
    @entities = Entity.all
    @user = current_user.id
  end
  
  def new
  end

  def create
  end
end
