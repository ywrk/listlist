class FirstlistController < ApplicationController
  def index
    @firstlists = Firstlist.all
  end
end
