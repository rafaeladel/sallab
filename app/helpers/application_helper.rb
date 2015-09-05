module ApplicationHelper
  def is_current?(path)
    "active" if request.url.include?(path)
  end

  def get_search_value(p)
    params[:product][p] if params.has_key? :product
  end
end
