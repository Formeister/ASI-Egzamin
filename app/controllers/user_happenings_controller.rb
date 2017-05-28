class UserHappeningsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @user_happening = @user.user_happenings.create(user_happening_params)
    redirect_to day_path(user_happening_params[:day_id])
  end

  def destroy
    @user = User.find(params[:user_id])
    @user_happening = @user.user_happenings.find(params[:id])
    day_id = @user_happening.day_id
    @user_happening.destroy
    redirect_to day_path(day_id)
  end

  private
  def user_happening_params
    params.require(:user_happening).permit(:year, :body, :day_id)
  end
end

