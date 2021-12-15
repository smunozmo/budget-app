class GroupsController < ApplicationController
  def show
    @groups = Group.where(user_id: current_user.id)
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
      flash[:alert] = 'Success!'
    else
      flash[:alert] = 'Error'
      render :new
    end
  end

  private

  def entity_params
    params.require(:entity).permit(group_ids: [])
  end
end
