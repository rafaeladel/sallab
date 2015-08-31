class AddPromotionToItemVideos < ActiveRecord::Migration
  def change
    add_reference :seven_portfolio_item_videos, :promotion
    add_foreign_key :seven_portfolio_item_videos, :promotions, on_delete: :cascade
  end
end
