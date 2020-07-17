module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Proven Impacts."
    @seo_keywords = "Zachary Martin portfolio Zack Martin"
  end
end