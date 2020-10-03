class UsersController < ApplicationController
  def index
  end

  def make_admin
    user = User.find(params[:id])
    user.update_attribute :admin, true
    redirect_to users_path
  end
    
  def remove_admin
    user = User.find(params[:id])
    user.update_attribute :admin, false
    redirect_to users_path
  end
end
