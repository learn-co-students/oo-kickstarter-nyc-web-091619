class Backer

    attr_reader :name, :backed_projects

    @backed_projects = []
    # @backers = []

    def initialize(name)
        @name = name
        @backed_projects = []
        # @backers = []
    end

    # Once both classes have their attributes and readers set up, write a method on the Backer class called back_project() that takes in a Project instance and adds the project to its @backed_projects attribute.

    def back_project(project)
        @backed_projects << project
        project.add_backer(self)
    end

    # def back_project(project)
    #     @backers << project
    # end


end

