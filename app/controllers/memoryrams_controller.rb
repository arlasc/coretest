class MemoryramsController < ApplicationController
  before_action :set_memoryram, only: %i[ show edit update destroy ]

  # GET /memoryrams or /memoryrams.json
  def index
    @memoryrams = Memoryram.all
  end

  # GET /memoryrams/1 or /memoryrams/1.json
  def show
  end

  # GET /memoryrams/new
  def new
    @memoryram = Memoryram.new
  end

  # GET /memoryrams/1/edit
  def edit
  end

  # POST /memoryrams or /memoryrams.json
  def create
    @memoryram = Memoryram.new(memoryram_params)

    respond_to do |format|
      if @memoryram.save
        format.html { redirect_to memoryram_url(@memoryram), notice: "Memoryram was successfully created." }
        format.json { render :show, status: :created, location: @memoryram }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @memoryram.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /memoryrams/1 or /memoryrams/1.json
  def update
    respond_to do |format|
      if @memoryram.update(memoryram_params)
        format.html { redirect_to memoryram_url(@memoryram), notice: "Memoryram was successfully updated." }
        format.json { render :show, status: :ok, location: @memoryram }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @memoryram.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memoryrams/1 or /memoryrams/1.json
  def destroy
    @memoryram.destroy

    respond_to do |format|
      format.html { redirect_to memoryrams_url, notice: "Memoryram was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memoryram
      @memoryram = Memoryram.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def memoryram_params
      params.require(:memoryram).permit(:product_name, :memory_size)
    end
end
