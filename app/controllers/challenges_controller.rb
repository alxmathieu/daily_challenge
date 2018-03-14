class ChallengesController < ApplicationController

  def show
    @challenge = Challenge.find(params[:id])
    @commitment = Commitment.new
    @random_challenge = Challenge.all.sample
  end

end
