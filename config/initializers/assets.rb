# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.min
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.

controllers = [
    "about_sections",
    "banners",
    "brands",
    "origins",
    "product_sections",
    "products",
    "tile_sizes",
    "seven_gallery/galleries",
    "regions",
    "branches",
    "news",
    "seven_portfolio/items",
    "promotions",
    "projects"
]

script_files = controllers.map { |c| "#{c}.js" }

style_files = controllers.map { |c| "#{c}.css" }

Rails.application.config.assets.precompile += %w( application_fe.css application_fe.js locale/*.css ckeditor/* )
Rails.application.config.assets.precompile += script_files
Rails.application.config.assets.precompile += style_files