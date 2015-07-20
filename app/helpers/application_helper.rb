module ApplicationHelper
  def is_current?(path)
    "active" if request.url.include?(path)
  end
end
