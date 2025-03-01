class ApplicationController < ActionController::Base
  # deviseのコントローラにストロングパラメータを追加
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # ユーザー登録時にユーザー名をストロングパラメータに追加
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name])
  end
end
