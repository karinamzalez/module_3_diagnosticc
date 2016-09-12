class SearchController < ApplicationController
  def index
    @staions = Stations.new(params[:zip])
  end
end
