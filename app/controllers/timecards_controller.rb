class TimecardsController < ApplicationController
  def index
  end

  def show
  end

  def timecard_punch
    binding.pry
    @timecard = Timecard.new
    @timecard.user_id = current_user.id
    # @timecard.clockin = current_time

    @timecard.save
  end

  def create
    # binding.pry
    @timecard = Timecard.new
    @timecard.user_id = current_user.id
    @timecard.clockin = Time.now
    @timecard.save
    redirect_to dashboard_index_path
    # return
    binding.pry
  end

  def new
  end

  def edit
  end

  private

  def timecard_params
    params.require(:timecard).permit(:user_id, :clockin, :clockout, :notes)
  end
end
