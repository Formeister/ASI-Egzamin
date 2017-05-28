class HappeningsController < ApplicationController
  def create
    @day = Day.find(params[:day_id])
    @happening = @day.happenings.create(happening_params)
    redirect_to day_path(@day)
  end

  def destroy
    @day = Day.find(params[:day_id])
    @happening = @day.happenings.find(params[:id])
    @happening.destroy
    redirect_to day_path(@day)
  end

  private
  def happening_params
    params.require(:happening).permit(:year, :body, :user_id)
  end
end
