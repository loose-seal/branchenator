require 'octokit'

class Gittery
  def initialize wd
    @git = Octokit::Client.new
    @wd = wd
  end

  def branches
    branches = []
    @git.branches('loose-seal/seal-club').each do |branch|
      branches << branch
    end
    return branches
  end

  def checkout branch
    Dir.chdir @wd do
      `git fetch -a && git checkout #{branch}`
    end
  end
end
