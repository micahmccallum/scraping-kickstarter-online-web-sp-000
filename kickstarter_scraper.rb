require 'nokogiri'
require 'pry'

def create_project_hash
  projects = {}

  html = File.read('fixtures/kickstarter.html')

  kickstarter = Nokogiri::HTML(html)
  project_list = kickstarter.css("project")

  project_list.each do |project|
    self.image_link = project.css("img").attr("src")
    self.description = project.css(".bbcard_blurb").text"



  binding.pry

end

create_project_hash
