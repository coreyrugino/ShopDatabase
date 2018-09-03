class ToolsController < ApplicationController
  def index
    @tools = Tool.all
  end

  def show
  end

  def new
  end
end
