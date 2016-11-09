class VideosController < ApplicationController
  before_action :set_video, only: [:show, :update, :destroy]

  def index
    @videos = Video.all

    render json: @videos
  end

  def show
    @video = Video.find(params[:id])
    render json: @video, status: :ok
  end

  def create
    @user = User.find(params[:user_id])
    @video = Video.new(video_params)
    @user.videos << @video

    if @video.save
      render json: @video, status: :created
    else
      render json: @video.errors, status: :unprocessable_entity
    end
  end

  def update
    @video = Video.find(params[:id])

    if @video.update(video_params)
      head :no_content
    else
      render json: @video.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @video.destroy

    head :no_content
  end

  private

    def set_video
      @video = Video.find(params[:id])
    end

    def video_params
      params.require(:video).permit(:name, :link, :final, :User_id)
    end
end
