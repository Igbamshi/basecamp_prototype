class UsersController < ApplicationController
  before_action :require_first_user, only: [:index, :make_admin, :remove_admin]

  def index
    @users = User.all
  end

  def make_admin
    user = User.find(params[:id])
    if user.set_admin
      flash[:notice] = "#{user.email} is now an admin."
    else
      flash[:alert] = "Failed to update role."
    end
    redirect_to users_path
  end

  def remove_admin
    user = User.find(params[:id])
    if user.remove_admin
      flash[:notice] = "#{user.email} is no longer an admin."
    else
      flash[:alert] = "Failed to update role."
    end
    redirect_to users_path
  end

  private

  def require_first_user
    unless current_user == User.first
      flash[:alert] = "You do not have permission to access this page."
      redirect_to root_path
    end
  end
end
