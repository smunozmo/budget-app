class GroupsController < ApplicationController
  def show
    @groups = Group.all
    @user = current_user.id
  end
  
  def new
    @group = Group.new
    @user = current_user.id
  end

  def create
    @group = Group.new
    @group.name = params[:group][:name]
    @group.icon = params[:group][:icon]
    @group.user_id = params[:user_id]
    if @group.save
      redirect_to groups_show_url
    else
      flash.now[:error] = 'Error'
      render :new
    end
  end

  private

  def entity_params
    params.require(:entity).permit(group_ids: [])
    params.require(:entity).permit(group_names: [])
  end

end
