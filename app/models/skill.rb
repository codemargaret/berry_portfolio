class Skill < ApplicationRecord
  has_many :endorsements

  validates :description, :presence => true
  validates :example, :presence => true
end
