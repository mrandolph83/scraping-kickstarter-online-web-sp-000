# require libraries/modules here
require 'pry'
require 'nokogiri'

# projects: kickstarter.css("li.project.grid_4").first
# title: project.css("h2.bbcard_name strong a").text
# image link: project.css("div.project-thumbnail a img").attribute("src").value
# description: project.css("p.bbcard_blurb").text
# location name: project.css("span.location-name").text.gsub("%", "").to_i
  # Above method gsub takes off the "%" from the 77% scraped, and converts to an
  # interger (.to_i)

def create_project_hash
  # write your code here
  # This just opens a file and reads it into a variable
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)

   projects = {}

  # binding.pry

  # Iterate through the projects
 kickstarter.css("li.project.grid_4").each do |project|
   projects[project] = {}
 end

 # return the projects hash
 projects
end
