class FirstlistController < ApplicationController
  def index
    @firstlists = Firstlist.all
  end

  def new
    @firstlist = Firstlist.new
  end

  def create
    @firstlist = Firstlist.new(firstlist_params)
    if @firstlist.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def firstlist_params
    params.require(:firstlist).permit(:title, :text1, :text2, :text3, :text4, :text5, :text6).merge(user_id: current_user.id)
  end
  
end
