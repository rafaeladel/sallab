class TileSizesController < ApplicationController
  before_action :set_tile_size, only: [:show, :edit, :update, :destroy]

  # GET /tile_sizes
  # GET /tile_sizes.json
  def index
    @tile_sizes = TileSize.all
  end

  # GET /tile_sizes/1
  # GET /tile_sizes/1.json
  def show
  end

  # GET /tile_sizes/new
  def new
    @tile_size = TileSize.new
  end

  # GET /tile_sizes/1/edit
  def edit
  end

  # POST /tile_sizes
  # POST /tile_sizes.json
  def create
    @tile_size = TileSize.new(tile_size_params)

    respond_to do |format|
      if @tile_size.save
        format.html { redirect_to @tile_size, notice: 'Tile size was successfully created.' }
        format.json { render :show, status: :created, location: @tile_size }
      else
        format.html { render :new }
        format.json { render json: @tile_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tile_sizes/1
  # PATCH/PUT /tile_sizes/1.json
  def update
    respond_to do |format|
      if @tile_size.update(tile_size_params)
        format.html { redirect_to @tile_size, notice: 'Tile size was successfully updated.' }
        format.json { render :show, status: :ok, location: @tile_size }
      else
        format.html { render :edit }
        format.json { render json: @tile_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tile_sizes/1
  # DELETE /tile_sizes/1.json
  def destroy
    @tile_size.destroy
    respond_to do |format|
      format.html { redirect_to tile_sizes_url, notice: 'Tile size was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tile_size
      @tile_size = TileSize.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tile_size_params
      params.require(:tile_size).permit(:height, :width)
    end
end
