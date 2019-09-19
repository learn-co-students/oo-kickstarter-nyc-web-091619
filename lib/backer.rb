

require_relative 'project.rb'


class Backer
  attr_reader :name, :backed_projects
  
  
  def initialize(name)
    @name = name
    @backed_projects = []
    
  end
  
  def backed_projects
    @backed_projects
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
    #adds the backer to the project's backer array
    #hoverboard should be accessed by this method
  end
  
end
