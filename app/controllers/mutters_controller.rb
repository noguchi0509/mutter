class MuttersController < ApplicationController
  def index
  end
  
  def new
    @mutter = Content.new
  end
  
  def create
    @mutter = Content.new(mutter_params)
    if @mutter.save
      redirect_to new_mutter_path, notice:"ブログを作成しました！"
    else
      render 'new'
    end
  end
  
  private
  def mutter_params
    params.require(:content).permit(:content)
  end
end