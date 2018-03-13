class ChallengesController < ApplicationController

  def show
    @todays_challenge = Challenge.find(params[:id])
  end

end
