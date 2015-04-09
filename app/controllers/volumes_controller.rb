class VolumesController < ApplicationController
  def index
    # until fully populated
    @volumes = Volume.all.order(:name).paginate(:page => params[:page], :per_page => 100)
  end

  def show
    @volume = Volume.find(params[:id])
  end

  def search
    @results = PgSearch.multisearch(params[:query])
  end

end
