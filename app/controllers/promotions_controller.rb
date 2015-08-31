class PromotionsController < ApplicationController
  include ::PageInfoControllerConcern

  before_action :set_promotion, only: [:show, :edit, :update, :destroy]

  def index
    @promotions = Promotion.all
  end

  # GET /promotions/1
  def show
    @photos = @promotion.promotion_gallery.photos.page(params[:page]) if @promotion.gallery?
  end

  # GET /promotions/new
  def new
    @promotion = Promotion.new
    @promotion.build_promotion_video
    @promotion.build_promotion_gallery
  end

  # GET /promotions/1/edit
  def edit
  end

  # POST /promotions
  def create
    @promotion = Promotion.new(promotion_params)
    if @promotion.save
      redirect_to @promotion, notice: 'Promotion was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /promotions/1
  def update
    if @promotion.update(promotion_params)
      redirect_to @promotion, notice: 'Promotion was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /promotions/1
  def destroy
    @promotion.destroy
    redirect_to promotions_url, notice: 'Promotion was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_promotion
    @promotion = Promotion.find(params[:id])
    @promotion.promotion_video ||= SevenPortfolio::ItemVideo.new

  end

  private
  # Only allow a trusted parameter "white list" through.
  def promotion_params
    permitted = Promotion.globalize_attribute_names +
        [:item_type, promotion_video_attributes: [:url, :description, :title], promotion_gallery_attributes: [:title]]

    params[:promotion].permit(permitted)
  end
end