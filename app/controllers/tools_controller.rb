class ToolsController < ApplicationController
  def index
    @tools = Tool.all
  end

  def show
  end

  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(tool_prams)
    if saved
      redirect_to tools_index_path
    else
      render :new
    end
  end

  private

  def tool_prams
    #TODO add params
    params.require(:name, :kind, :user_id)
  end
end
