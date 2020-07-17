module ApplicationHelper
  def login_helper
    if !current_user.is_a?(GuestUser)
      link_to "Logout", destroy_user_session_path, method: :delete
    else 
      (link_to "Create Account", new_user_registration_path) + '<br />'.html_safe +
      (link_to "Sign in", new_user_session_path)
    end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} page"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end
end
