class PagesController < ApplicationController
  def home
    @blogs = Blog.all
    @skills = Skill.all
    @page_title = "Home | Proven Impacts."
  end

  def about
    # @skills = Skill.all
    @skills = [
      {
        title: "Javascript",
        percent_utilized: 85
        },
        {
        title: "React.js",
        percent_utilized: 85
        },
        {
        title: "Ruby",
        percent_utilized: 85
        },
        {
        title: "Python",
        percent_utilized: 85
        },
        {
        title: "SQL",
        percent_utilized: 85
        },
        {
        title: "PostgreSQL",
        percent_utilized: 85
        },
        {
        title: "Ruby on Rails",
        percent_utilized: 85
        },
        {
        title: "MongoDB",
        percent_utilized: 85
        },
        {
        title: "AWS S3",
        percent_utilized: 85
        },
        {
        title: "React Native",
        percent_utilized: 85
        },
        {
        title: "Sketch",
        percent_utilized: 85
        }
      ]
  end

  def contact
  end
end
