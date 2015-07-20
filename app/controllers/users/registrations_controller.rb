class Users::RegistrationsController < Devise::RegistrationsController
  #disabling registration
  def new
    raise ActionController::RoutingError.new("Not found")
  end

  def create
    raise ActionController::RoutingError.new("Not found")
  end

  protected

  def after_update_path_for(resource)
    get_home_admin_url
  end
end