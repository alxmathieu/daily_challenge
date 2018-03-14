class CommitmentsController < ApplicationController

  def index
    @challenge = Challenge.all.sample
    @accepted_commitments = Commitment.where(user_id: current_user.id, status: "accepted")
    @abandonned_commitments = Commitment.where(user_id: current_user.id, status: "abandonned")
    @done_commitments = Commitment.where(user_id: current_user.id, status: "done")
  end

  def create
    @commitment = Commitment.new(user_id: commitment_params[:user_id], challenge_id: commitment_params[:challenge_id])
    if @commitment.save
      redirect_to commitments_path
    else

    end
  end

  def update
    @commitment = Commitment.find(commitment_params[:id])
    @commitment.status = commitment_params[:status]
    if @commitment.save
      redirect_to commitments_path
    end
  end

  private

  def commitment_params
    params.require(:commitment).permit(:user_id, :challenge_id, :status, :id)
  end

end
