class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected
  def configure_permitted_parameters
    # アカウント編集時のストロングパラメータ
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :profile_image,
                                                              :profile_text, :location, :email, :sex ])
  end
end
