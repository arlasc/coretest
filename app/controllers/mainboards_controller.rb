class MainboardsController < ApplicationController
  before_action :set_mainboard, only: %i[ show edit update destroy ]

  # GET /mainboards or /mainboards.json
  def index
    @mainboards = Mainboard.all
  end

  # GET /mainboards/1 or /mainboards/1.json
  def show
  end

  # GET /mainboards/new
  def new
    @mainboard = Mainboard.new
  end

  # GET /mainboards/1/edit
  def edit
  end

  # POST /mainboards or /mainboards.json
  def create
    @mainboard = Mainboard.new(mainboard_params)

    respond_to do |format|
      if @mainboard.save
        format.html { redirect_to mainboard_url(@mainboard), notice: "Mainboard was successfully created." }
        format.json { render :show, status: :created, location: @mainboard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mainboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mainboards/1 or /mainboards/1.json
  def update
    respond_to do |format|
      if @mainboard.update(mainboard_params)
        format.html { redirect_to mainboard_url(@mainboard), notice: "Mainboard was successfully updated." }
        format.json { render :show, status: :ok, location: @mainboard }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mainboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mainboards/1 or /mainboards/1.json
  def destroy
    @mainboard.destroy

    respond_to do |format|
      format.html { redirect_to mainboards_url, notice: "Mainboard was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mainboard
      @mainboard = Mainboard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mainboard_params
      params.require(:mainboard).permit(:product_name, :processors_suported, :qtd_slots_ram, :max_memory_ram, :video_board)
    end
end
