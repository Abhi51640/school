class ApplicationController < ActionController::Base
        
  def after_sign_out_path_for(resource)
    new_user_session_path
  end

   def _process_options options
    options[:template] += '.xhr' if request.xhr?
    super options
  end
end
