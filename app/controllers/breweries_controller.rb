class BreweriesController < ApplicationController
  def index
    @breweries = Brewery.all
  end

  def show
    @brewery = Brewery.find(params[:id])
    @beer = Beer.new
  end
end
