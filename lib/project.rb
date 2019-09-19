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


# if we had access to a list of all of the songs by all artists, we could just query that list by asking for all songs that belong to a given artist.