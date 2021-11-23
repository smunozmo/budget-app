class EntitiesController < ApplicationController
  def show
    @group = Group.find(params[:id])
    @entities = Entity.all
    @user = current_user.id
  end
  
  def new
    @entity = Entity.new
    @user = current_user.id
  end

  def create
    @entity = Entity.new
    @entity.name = params[:entity][:name]
    @entity.amount = params[:entity][:amount]
    @entity.user_id = params[:user_id]
    if @entity.save
      redirect_to groups_show_url
    else
      flash.now[:error] = 'Error'
      render :new
    end
  end

  private

  def group_params
    params.require(:group).permit(entity_ids: [])
  end
end
