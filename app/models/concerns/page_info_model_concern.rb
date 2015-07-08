module ::PageInfoModelConcern
	extend ActiveSupport::Concern
	included do	 
		translates :general_title, :general_description, :general_keywords
		globalize_accessors locales: [:en, :ar], attributes: [:general_title, :general_description, :general_keywords]
	end
end