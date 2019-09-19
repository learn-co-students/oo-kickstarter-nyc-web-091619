class Project
 attr_reader :title
 attr_accessor :backers

  @@projects = []

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    self.backers << backer
    backer.backed_projects << self
  end

end