require 'pry'

class Backer

    attr_reader :name, :backed_projects

    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(project)
        # Whenever this method is called, it should also update the @backers list in the Project class
        @backed_projects << project
        project.backers << self
    end

end



# describe 'Backer - More Advanced #back_project' do
# it 'also adds the backer to the project\'s backers array' do
#     logan = Backer.new("Logan")
#     hoverboard = Project.new("Awesome Hoverboard")
#     logan.back_project(hoverboard)