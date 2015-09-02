class AddProjectToItemVideos < ActiveRecord::Migration
  def change
    add_reference :seven_portfolio_item_videos, :project
    add_foreign_key :seven_portfolio_item_videos, :projects, on_delete: :cascade
  end
end
