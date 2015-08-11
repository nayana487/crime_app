# AM: Nice, keeping your controller to only the actions you need.

class RegionsController < ApplicationController
  def index
    @regions = Region.all
  end

  def show
    @region = Region.find(params[:id])
  end

end
