require 'pry'
class Project

    attr_reader :title, :backers

    @backers = []

    def initialize(title)
        @title = title
        @backers = []
    end

    # Accepts a Backer as an argument and stores it in a backers array

    def add_backer(backer)
        # if !backers.include?(backer)
        #     backer.back_project(self)
        # end
       @backers << backer
       if backer.backed_projects.include?self
        return
       else
        backer.backed_projects << self
       end
    end

    
end
