class SevenCareers::Job < ActiveRecord::Base
  include SevenCareers::Concerns::Job

  translates :title, :description, :location
  globalize_accessors locales: [:en, :ar], attributes: [:title, :description, :location]
end
