class GroupsController < ApplicationController
  def show
    @groups = Group.all
    @user = current_user.id
  end
  
  def new
  end

  def create
  end
end
