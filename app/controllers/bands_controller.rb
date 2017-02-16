class BandsController < ApplicationController
  def index
    @bands = Band.all
    render :index
  end

  def new
    @band = Band.new(band_params)
    render :new
  end

  def create
    @band = Band.new(band_params)

    if @band.save!
      redirect_to bands_url
    else
      flash.now[:errors] = @band.errors.full_messages
      render :new
    end
  end


  def edit

  end

  def show
    @band = Band.find(params[:id])
    render :show
  end

  def update

  end

  def destroy

  end

  def band_params
    params.require(:band).permit(:name)
  end
end
