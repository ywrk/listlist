class FirstlistsController < ApplicationController
  before_action :set_firstlist, except: [:index, :new, :create]

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

  def show
  end

  def edit
  end

  def update
    if @firstlist.update(firstlist_params)
      redirect_to firstlist_path(@firstlist)
    else
      render :edit
    end
  end

  private

  def firstlist_params
    params.require(:firstlist).permit(:title, :text1, :text2, :text3, :text4, :text5, :text6).merge(user_id: current_user.id)
  end

  def set_firstlist
    @firstlist = Firstlist.find(params[:id])
  end
  
  
end