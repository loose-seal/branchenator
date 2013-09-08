require 'octokit'

class Gittery
  attr_reader :base

  def initialize repo, wd, base
    @git   = Octokit::Client.new
    @repo  = repo
    @wd    = wd
    @base  = base
  end

  def branches
    branches = []
    @git.branches( @repo ).each do |branch|
      branches << branch.name
    end
    return branches
  end

  def checkout branch
    Dir.chdir @wd do
      `git checkout #{branch} && git pull`
    end
  end
end
