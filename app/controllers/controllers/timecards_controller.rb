class TimecardsController < ApplicationController
  def index
  end

  def show
  end

  def timecard_punch
    binding.pry
    @timecard = Timecard.new
    @timecard.user_id = current_user.id
    @timecard.save
  end
# TODO make the button go to a clock_in instead of the create.

  def clock_in
    #was create
    puts "===Created==="
    # binding.pry
    @timecard = Timecard.new
    @timecard.user_id = current_user.id
    @timecard.clockin = Time.now
    @timecard.save
    flash[:notice] = 'Clocked in'
    redirect_to dashboard_index_path
  end

  def clock_out
    @timecard = Timecard.where(:user_id => current_user.id).last
    if @timecard.clockout.nil?
      @timecard.clockout = Time.now
      @timecard.save
      puts "clocked out"
      flash[:notice] = 'Clocked out'
    else
      puts "not clocked in"
      flash[:notice] = 'Not clocked in'
    end
    redirect_to dashboard_index_path
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
