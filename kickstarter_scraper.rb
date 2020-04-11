require 'nokogiri'
require 'pry'

def create_project_hash
  projects = {}

  html = File.read('fixtures/kickstarter.html')

  kickstarter = Nokogiri::HTML(html)
  project_list = kickstarter.css(".project")

  project_list.each do |project|
    image_link = project.css("img").attr("src").text.strip
    description = project.css(".bbcard_blurb").text.strip
    location = project.css(".location-name").text.strip
    percent_funded = project.css(".funded strong").text.strip
    projects[project] = {}
  end
  projects
  binding.pry
end

create_project_hash
