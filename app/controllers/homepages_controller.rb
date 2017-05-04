class HomepagesController < ApplicationController

  def index
    params[:page] = 1
  end

end
