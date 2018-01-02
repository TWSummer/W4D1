class ArtworksController < ApplicationController

  def index
    @artworks = Artwork.all
    render json: @artworks, status: :ok
  end

  def show
    @artwork = Artwork.find_by(id: params[:id])
    if @artwork
      render json: @artwork, status: :ok
    else
      render plain: "Artwork not found", status: 404
    end
  end

  def update
    @artwork = Artwork.find_by(id: params[:id])
    if @artwork
      if @artwork.update(artwork_params)
        render json: @artwork
      else
        render json: @artwork.errors.full_messages
      end
    else
      render plain: "Artwork not found.", status: 404
    end
  end

  def create
    @artwork = Artwork.new(artwork_params)
    if @artwork.save
      render json: @artwork, status: :ok
    else
      render json: @artwork.errors.full_messages
    end
  end

  def destroy
    @artwork = Artwork.find_by(id: params[:id])
    if @artwork
      @artwork.destroy
      render json: @artwork
    else
      render plain: "Artwork not found.", status: 404
    end
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :image_url, :artist_id)
  end
end
