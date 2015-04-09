class WelcomeController < ApplicationController
  before_action :disable_nav

  def index
    @issues = Issue.all.count
    @volumes = Volume.all.count
    @creators = Creator.all.count
  end
end
