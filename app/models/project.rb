class Project < ApplicationRecord
  has_many :comments

  validates :title, :presence => true
  validates :description, :presence => true
  validates :link, :presence => true
end
