class User < ApplicationRecord
  has_many :commitments, dependent: :destroy


  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  def name
    "#{id}- #{email}"
  end

end
