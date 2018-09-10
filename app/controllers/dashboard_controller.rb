class DashboardController < ApplicationController
  def index
    @clockedin = Timecard.where(:user_id => current_user.id).last
    @tools = Tool.all
    # binding.pry
    flash[:notice] = ("Meow")
    # toastr.info('welcome to the dashboard')
    # toastr["success"]("meow")
    # flash[:success] = t('.successfully_created')
    # toastr.info('Are you the 6 fingered man?')
  end

end
