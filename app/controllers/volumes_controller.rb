class VolumesController < ApplicationController
  def index
    @volumes = Volume.all.where.not(start_year: nil).order(:name)
  end
end
