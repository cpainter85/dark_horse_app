class VolumesController < ApplicationController
  def index
    # until fully populated
    @volumes = Volume.all
  end

  def show
    @volume = Volume.find(params[:id])
  end

  def search
    @results = PgSearch.multisearch(params[:query])

  end

end
