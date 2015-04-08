class IssuesController < ApplicationController
  before_action do
    @volume = Volume.find(params[:volume_id])
  end

  def show
    @issue = @volume.issues.find(params[:id])
  end
end
