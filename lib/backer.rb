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

