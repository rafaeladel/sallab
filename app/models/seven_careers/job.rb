class SevenCareers::Job < ActiveRecord::Base
  include SevenCareers::Concerns::Job

  translates :title, :description
  globalize_accessors locales: [:en, :ar], attributes: [:title, :description]
end
