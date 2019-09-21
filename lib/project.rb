# class Project

#     attr_reader :title, :backers

#     @backers = []

#     def initialize(title)
#         @title = title
#         @backers = []
#     end

#     # Accepts a Backer as an argument and stores it in a backers array

#     def add_backer(backer)
#         @backers << backer
#     end

    
# end

class Project 

    attr_reader :title, :backers

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        @backers << backer
        backer.backed_projects << self
    end
end
