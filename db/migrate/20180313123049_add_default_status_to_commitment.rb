class AddDefaultStatusToCommitment < ActiveRecord::Migration[5.1]
  def change
    change_column_default :commitments, :status, "accepted"
  end
end
