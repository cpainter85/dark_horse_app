class VolumesController < ApplicationController
  def index
    # until fully populated
    @volumes = Volume.all.where.not(start_year: nil).order(:name)
  end

  def show
    @volume = Volume.find(params[:id])
  end
end
