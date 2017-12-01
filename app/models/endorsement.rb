class Endorsement < ApplicationRecord
  belongs_to :skill
  belongs_to :user

  validates :user_id, :presence => true
  validates :skill_id, :presence => true
  validates :body, :presence => true
end
