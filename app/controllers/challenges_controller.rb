class ChallengesController < ApplicationController

  def show
    @challenge = Challenge.find(params[:id])
    @commitment = Commitment.new

    # list all seen challenges
    seen_challenges = []
    all_commitments = Commitment.where(user_id: current_user.id)
    all_commitments.each do |commitments|
      seen_challenges << commitments.challenge
    end
    # check if a challenge is accepted
    unseen_challenges = []
    Challenge.all.each do |challenge|
    # if not, add it to unseen_challenge
      unseen_challenges << challenge unless seen_challenges.include?(challenge)
    end
    # if a user has seen all challenges, pick a random one
    if unseen_challenges == []
      @random_challenge = Challenge.all.sample
    else
      @random_challenge = unseen_challenges.sample
    end
  end

end
