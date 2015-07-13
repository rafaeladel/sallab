class AboutSectionsController < ApplicationController
  before_action :set_about_section, only: [:show, :edit, :update, :destroy]

  # GET /about_sections
  # GET /about_sections.json
  def index
    @about_sections = AboutSection.all
  end

  # GET /about_sections/1
  # GET /about_sections/1.json
  def show
  end

  # GET /about_sections/new
  def new
    @about_section = AboutSection.new
  end

  # GET /about_sections/1/edit
  def edit
  end

  # POST /about_sections
  # POST /about_sections.json
  def create
    @about_section = AboutSection.new(about_section_params)

    respond_to do |format|
      if @about_section.save
        format.html { redirect_to @about_section, notice: 'About section was successfully created.' }
        format.json { render :show, status: :created, location: @about_section }
      else
        format.html { render :new }
        format.json { render json: @about_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /about_sections/1
  # PATCH/PUT /about_sections/1.json
  def update
    respond_to do |format|
      if @about_section.update(about_section_params)
        format.html { redirect_to @about_section, notice: 'About section was successfully updated.' }
        format.json { render :show, status: :ok, location: @about_section }
      else
        format.html { render :edit }
        format.json { render json: @about_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /about_sections/1
  # DELETE /about_sections/1.json
  def destroy
    @about_section.destroy
    respond_to do |format|
      format.html { redirect_to about_sections_url, notice: 'About section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about_section
      @about_section = AboutSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def about_section_params
      permitted = AboutSection.globalize_attribute_names + [:image, :slug]
      params.require(:about_section).permit(*permitted)
    end
end
