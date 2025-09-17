class LeaderboardController < ApplicationController
  before_action :authenticate_user!

  def index
    leaderboard = user
      .joins(:progress)
      .select("users.id, users.email, COUNT(progresses.id) as completed_lessons")
      .where(progresses: {completed: true})
      .group("users.id")
      .order("completed_lessons DESC")
      .limit(10)

    render(json: leaderboard)
  end
end
