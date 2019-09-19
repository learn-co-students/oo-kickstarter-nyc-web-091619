class Project
 attr_reader :title, :backers


def initialize(title, backers=[])
  @title = title
  @backers = backers
end

end