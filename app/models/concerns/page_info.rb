module ::Concerns::PageInfo
	extend ActiveSupport::Concern
	included do	 
		translates :title, :description, :keywords
		globalize_accessors locales: [:en, :ar], attributes: [:title, :description, :keywords]
	end
end