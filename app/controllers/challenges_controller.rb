class ChallengesController < ApplicationController

  def show
    @challenge = Challenge.find(params[:id])
    @commitment = Commitment.new
  end

end
