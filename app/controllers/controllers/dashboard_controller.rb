class DashboardController < ApplicationController
  def index
    @clockedin = Timecard.where(:user_id => current_user.id).last
  end
end
