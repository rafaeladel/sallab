class AboutSection < ActiveRecord::Base
  mount_uploader :image, AboutSectionUploader
  translates :title, :content
  globalize_accessors locales: [:en, :ar], attributes: [:title, :content]
  validates :title_en, presence: true
  validates :content_en, presence: true

  before_save :slugify

  private
  def slugify
    self.slug = title_en.parameterize
  end
end
