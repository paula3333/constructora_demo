class MaterialsController < ApplicationController
  before_action :set_material, only: %i[show edit update destroy ]
  before_action :query_brands, only: %i[show new edit update ]
  before_action :query_categories, only: %i[show new edit update ]
  # GET /materials or /materials.json
  def index
    @materials =Material.includes(:brand, :category).order(created_at: :desc)
  end

  # GET /materials/1 or /materials/1.json
  def show
  end

  # GET /materials/new
  def new
    @material = Material.new
  end

  # GET /materials/1/edit
  def edit
  end

  # POST /materials or /materials.json
  def create
    @material = Material.new(material_params)

    respond_to do |format|
      if @material.save
        format.html { redirect_to material_url(@material), notice: "Material was successfully created." }
        format.json { render :show, status: :created, location: @material }
      else
        format.html { redirect_to new_material_path status: :unprocessable_entity }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materials/1 or /materials/1.json
  def update
    respond_to do |format|
      if @material.update(material_params)
        format.html { redirect_to material_url(@material), notice: "Material was successfully updated." }
        format.json { render :show, status: :ok, location: @material }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materials/1 or /materials/1.json
  def destroy
    @material.destroy

    respond_to do |format|
      format.html { redirect_to materials_url, notice: "Material was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material
      @material = Material.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def material_params
      params.require(:material).permit(:name, :description, :measure, :category_id, :brand_id)
    end

    def query_brands
      @brands = Brand.select(:id, :name).order(name: :asc)
    end

    def query_categories
      @categories = Category.select(:id, :name).order(name: :asc)
    end

end
