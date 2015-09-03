class ProductSectionsController < ApplicationController
  include ::PageInfoControllerConcern

  before_action :set_product_section, only: [:show, :edit, :update, :destroy]

  # GET /product_sections
  # GET /product_sections.json
  def index
    @product_sections = ProductSection.all
  end

  # GET /product_sections/1
  # GET /product_sections/1.json
  def show
  end

  # GET /product_sections/new
  def new
    @product_section = ProductSection.new
  end

  # GET /product_sections/1/edit
  def edit
  end

  # POST /product_sections
  # POST /product_sections.json
  def create
    @product_section = ProductSection.new(product_section_params)

    respond_to do |format|
      if @product_section.save
        format.html { redirect_to @product_section, notice: 'Product section was successfully created.' }
        format.json { render :show, status: :created, location: @product_section }
      else
        format.html { render :new }
        format.json { render json: @product_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_sections/1
  # PATCH/PUT /product_sections/1.json
  def update
    respond_to do |format|
      if @product_section.update(product_section_params)
        format.html { redirect_to @product_section, notice: 'Product section was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_section }
      else
        format.html { render :edit }
        format.json { render json: @product_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_sections/1
  # DELETE /product_sections/1.json
  def destroy
    @product_section.destroy
    respond_to do |format|
      format.html { redirect_to product_sections_url, notice: 'Product section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_section
      @product_section = ProductSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_section_params
      permitted = ProductSection.globalize_attribute_names + [:image, :slug, :search_fields]
      params.require(:product_section).permit(*permitted)
    end
end
