class VolumesController < ApplicationController
  def index
    # until fully populated
    @volumes = Volume.all.order(:name)
  end

  def show
    @volume = Volume.find(params[:id])
  end

  def search
    @results = PgSearch.multisearch(params[:query])
# binding.pry
  end

end
