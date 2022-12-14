class ConstructionsController < ApplicationController
  before_action :set_construction, only: %i[ show edit update destroy ]

  # GET /constructions or /constructions.json
  def index
    @constructions = Construction.all
  end

  # GET /constructions/1 or /constructions/1.json
  def show
  end

  # GET /constructions/new
  def new
    @construction = Construction.new
  end

  # GET /constructions/1/edit
  def edit
  end

  # POST /constructions or /constructions.json
  def create
    @construction = Construction.new(construction_params)

    respond_to do |format|
      if @construction.save
        format.html { redirect_to construction_url(@construction), notice: "Construction was successfully created." }
        format.json { render :show, status: :created, location: @construction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @construction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /constructions/1 or /constructions/1.json
  def update
    respond_to do |format|
      if @construction.update(construction_params)
        format.html { redirect_to construction_url(@construction), notice: "Construction was successfully updated." }
        format.json { render :show, status: :ok, location: @construction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @construction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /constructions/1 or /constructions/1.json
  def destroy
    @construction.destroy

    respond_to do |format|
      format.html { redirect_to constructions_url, notice: "Construction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_construction
      @construction = Construction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def construction_params
      params.require(:construction).permit(:name, :initial_date, :end_date, :cost)
    end
end
