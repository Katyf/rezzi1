class VideosController < ApplicationController
  before_action :set_video, only: [:show, :update, :destroy]

  # GET /videos
  # GET /videos.json
  def index
    @videos = video.all

    render json: @videos
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
    render json: @video
  end

  # POST /videos
  # POST /videos.json
  def create
    @user = User.find(params[:user_id])
    @video = video.new(video_params)
    @user.videos << @video

    if @video.save
      render json: @video, status: :created
    else
      render json: @video.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /videos/1
  # PATCH/PUT /videos/1.json
  def update
    @video = video.find(params[:id])

    if @video.update(video_params)
      head :no_content
    else
      render json: @video.errors, status: :unprocessable_entity
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @video.destroy

    head :no_content
  end

  private

    def set_video
      @video = video.find(params[:id])
    end

    def video_params
      params.require(:video).permit(:name, :link, :final, :User_id)
    end
end
