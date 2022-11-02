class VideoboardsController < ApplicationController
  before_action :set_videoboard, only: %i[ show edit update destroy ]

  # GET /videoboards or /videoboards.json
  def index
    @videoboards = Videoboard.all
  end

  # GET /videoboards/1 or /videoboards/1.json
  def show
  end

  # GET /videoboards/new
  def new
    @videoboard = Videoboard.new
  end

  # GET /videoboards/1/edit
  def edit
  end

  # POST /videoboards or /videoboards.json
  def create
    @videoboard = Videoboard.new(videoboard_params)

    respond_to do |format|
      if @videoboard.save
        format.html { redirect_to videoboard_url(@videoboard), notice: "Videoboard was successfully created." }
        format.json { render :show, status: :created, location: @videoboard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @videoboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videoboards/1 or /videoboards/1.json
  def update
    respond_to do |format|
      if @videoboard.update(videoboard_params)
        format.html { redirect_to videoboard_url(@videoboard), notice: "Videoboard was successfully updated." }
        format.json { render :show, status: :ok, location: @videoboard }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @videoboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videoboards/1 or /videoboards/1.json
  def destroy
    @videoboard.destroy

    respond_to do |format|
      format.html { redirect_to videoboards_url, notice: "Videoboard was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_videoboard
      @videoboard = Videoboard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def videoboard_params
      params.require(:videoboard).permit(:product_name)
    end
end
