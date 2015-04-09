class CreatorsController < ApplicationController

  def index
    @creators = Creator.all.order(:name).paginate(:page => params[:page], :per_page => 200  )
  end

  def show
    @creator = Creator.find(params[:id])
  end

end
