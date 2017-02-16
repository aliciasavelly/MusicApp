class BandsController < ApplicationController
  def index
    Band.all
  end

  def new
    band = Band.new(band_params)
  end

  def create

  end


  def edit

  end

  def show

  end

  def update

  end

  def destroy

  end

  def band_params
    params.require(:band)
  end
end
