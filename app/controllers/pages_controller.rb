class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @challenges = Challenge.all # list all challenges
    # offset_nb = rand(Challenge.all.length)
    @homepage_challenges = []
    6.times do
      @homepage_challenges << Challenge.all.sample
    end
    @random_challenge = Challenge.all.sample
  end
end
