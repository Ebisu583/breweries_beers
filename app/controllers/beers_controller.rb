class BeersController < ApplicationController
  def create
    @brewery = Brewery.find(params[:brewery_id])
    @beer = Beer.new(beer_params)
    @beer.brewery = @brewery
    if @beer.save
      redirect_to brewery_path(@brewery)
    else
      render 'breweries/show'
    end
  end

  def destroy
    @beer = Beer.find(params[:id])
    @beer.destroy
    redirect_to brewery_path(@beer.brewery)
  end

  private

  def beer_params
    params.require(:beer).permit([:name, :image_url])
  end

end
