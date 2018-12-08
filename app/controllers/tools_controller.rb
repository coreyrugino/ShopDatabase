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
    if @tool.save
      redirect_to tools_path
    else
      render :new
    end
  end

  private

  def tool_prams
    #TODO add params
    # params.require(:user_id,)
    params.require(:tool).permit(:name, :quantity, :brand, :kind, :mill, :lathe,
      :drill, :diameter, :length, :drill_length, :radius, :material, :teeth, :f_low,
      :f_high, :f_rough, :f_finish, :fZ_low, :fZ_high, :fZ_rough, :fZ_finish, :Vc_low,
      :Vc_high,)
  end
end
