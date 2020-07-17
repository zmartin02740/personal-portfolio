class PagesController < ApplicationController
  def home
    @blogs = Blog.all
    @skills = Skill.all
    @page_title = "Home | Proven Impacts."
  end

  def about
  end

  def contact
  end
end
