class DashboardController < ApplicationController
  def index
    # binding.pry
    @clockedin = Timecard.where(:user_id => current_user.id).last
  end
end
