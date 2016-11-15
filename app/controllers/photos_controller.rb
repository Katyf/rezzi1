class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :update, :destroy]

  def index
    @photos = Photo.all
    render json: @photos
  end

  def show
    @photo = Photo.find(params[:id])
    render json: @image, status: :ok
  end

  def create
    @user = User.find(params[:user_id])
    @photo = Photo.new(photo_params)
    @user.photos << @photo

    if @photo.save
      render json: @photo, status: :created
    else
      render json: @photo.errors, status: :unprocessable_entity
    end
  end

  def update
    @photo = Photo.find(params[:id])

    if @photo.update(photo_params)
      head :no_content
    else
      render json: @photo.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @photo.destroy

    head :no_content
  end

  private

    def set_photo
      @photo = Photo.find(params[:id])
    end

    def photo_params
      params.require(:photo).permit(:name, :src, :User_id)
    end
end
