class PagesController < ApplicationController
  def home
    @blogs = Blog.all
    @portfolios = Portfolio.all
    @page_title = "Home | Proven Impacts."
  end

  def about
  end

  def contact
  end
end
