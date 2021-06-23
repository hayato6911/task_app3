class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search
  
  def set_search
    @users = User.all
    @rooms = Room.all
    @q = Room.ransack(params[:q])
    @rooms = @q.result(distinct: true)
  end
  
  def after_sign_in_path_for(resource)
    user_path(resource.id)
  end
  
  def after_sign_out_path_for(resource)
   root_path
  end

  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:profile_image_id, :profile,:username,:email])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
  
end
