class AddTitleToPortfolioItem < ActiveRecord::Migration
  def change
    remove_columns :seven_portfolio_items, :finished_at, :description, :is_featured
  end
  SevenPortfolio::Item.create_translation_table! title: :string, description: :text
end
