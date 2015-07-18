class Frontend::FrontendSettingsController < Frontend::FrontendApplicationController
  def change_locale
    l = params[:locale].to_s.strip.to_sym
    l = I18n.default_locale unless I18n.locale_available?(l)
    cookies.permanent[:locale] = l
    redirect_to frontend_home_url(locale: l)
  end
end