class DashboardController < ApplicationController
  def index
    @clockedin = Timecard.where(:user_id => current_user.id).last
    @tools = Tool.all
    # binding.pry
  end

end
