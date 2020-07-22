class PagesController < ApplicationController
  def home
    @blogs = Blog.all
    @skills = Skill.all
    @page_title = "Home | Proven Impacts."
  end

  def about
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
        percent_utilized: 75
        },
        {
        title: "Python",
        percent_utilized: 70
        },
        {
        title: "SQL",
        percent_utilized: 55
        },
        {
        title: "PostgreSQL",
        percent_utilized: 70
        },
        {
        title: "Ruby on Rails",
        percent_utilized: 65
        },
        {
        title: "MongoDB",
        percent_utilized: 45
        },
        {
        title: "AWS S3",
        percent_utilized: 50
        },
        {
        title: "React Native",
        percent_utilized: 40
        },
        {
        title: "Sketch",
        percent_utilized: 66
        }
      ]
  end

  def contact
  end
end
