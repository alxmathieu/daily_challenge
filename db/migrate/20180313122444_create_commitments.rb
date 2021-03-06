class CreateCommitments < ActiveRecord::Migration[5.1]
  def change
    create_table :commitments do |t|
      t.string :status
      t.references :user, foreign_key: true
      t.references :challenge, foreign_key: true

      t.timestamps
    end
  end
end
