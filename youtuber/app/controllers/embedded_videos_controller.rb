class EmbeddedVideosController < ApplicationController
  before_action :set_embedded_video, only: [:show, :edit, :update, :destroy]

  # GET /embedded_videos
  # GET /embedded_videos.json
  def index
    @embedded_videos = EmbeddedVideo.all
  end

  # GET /embedded_videos/1
  # GET /embedded_videos/1.json
  def show
  end

  # GET /embedded_videos/new
  def new
    @embedded_video = EmbeddedVideo.new
  end

  # GET /embedded_videos/1/edit
  def edit
  end

  # POST /embedded_videos
  # POST /embedded_videos.json
  def create
    @embedded_video = EmbeddedVideo.new(embedded_video_params)

    respond_to do |format|
      if @embedded_video.save
        format.html { redirect_to @embedded_video, notice: 'Embedded video was successfully created.' }
        format.json { render :show, status: :created, location: @embedded_video }
      else
        format.html { render :new }
        format.json { render json: @embedded_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /embedded_videos/1
  # PATCH/PUT /embedded_videos/1.json
  def update
    respond_to do |format|
      if @embedded_video.update(embedded_video_params)
        format.html { redirect_to @embedded_video, notice: 'Embedded video was successfully updated.' }
        format.json { render :show, status: :ok, location: @embedded_video }
      else
        format.html { render :edit }
        format.json { render json: @embedded_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /embedded_videos/1
  # DELETE /embedded_videos/1.json
  def destroy
    @embedded_video.destroy
    respond_to do |format|
      format.html { redirect_to embedded_videos_url, notice: 'Embedded video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_embedded_video
      @embedded_video = EmbeddedVideo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def embedded_video_params
      params.require(:embedded_video).permit(:name, :video_url, :photo_url, :color, :autoplay)
    end
end
