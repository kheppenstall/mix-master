class ArtistsController < ApplicationController
  
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to @artist
    else
      @errors = @artist.errors
      render :new
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :image_path)
  end

end
