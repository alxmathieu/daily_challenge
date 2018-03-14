class CommitmentsController < ApplicationController

  def index
    @challenge = Challenge.all.sample
    @commitments = Commitment.where("user_id = #{current_user.id}")

  end

  def create
    @commitment = Commitment.new(user_id: commitment_params[:user_id], challenge_id: commitment_params[:challenge_id])
    if @commitment.save
      redirect_to commitments_path
    end
  end

  private

  def commitment_params
    params.require(:commitment).permit(:user_id, :challenge_id)
  end

end
