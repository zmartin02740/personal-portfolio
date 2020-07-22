class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent

  before_action :set_copyright  
  before_action :configure_permitted_parameters, if: :devise_controller?


  def set_copyright
    @copyright = ZmartinViewTool::Renderer.copyright 'Zack Martin', 'All rights reserved'
  end


  protected

  def configure_permitted_parameters
    attributes = [:name, :roles, :email]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end
end

module ZmartinViewTool
  class Renderer
    def self.copyright(name, msg)
      "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
    end
  end
end