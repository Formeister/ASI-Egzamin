class HappeningsController < ApplicationController
  def create
    @day = Day.find(params[:day_id])
    @happening = @day.happenings.new(happening_params)
    puts "BLABLABLABA"
    if @happening.save
      flash[:success] = "Wydarzenie zostało dodane"
      redirect_to day_path(@day)
    else
      flash[:danger] = "Wprowadzone dane są błędne"
      redirect_to day_path(@day)
    end
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
