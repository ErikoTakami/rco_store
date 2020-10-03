class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :admin])
  end

  # def admin_check
  #   if @user.email == ENV["RCO_ADMIN_EMAIL"] && @user.password == ENV["RCO_ADMIN_PASSWORD"] && @userpassword_confirmation == ENV["RCO_ADMIN_PASSWORD"]
  #     @user.admin == 1
  #   else
  #     @user.admin == 0
  #   end
  # end
end
