class User < ApplicationRecord
  has_many :comments
  has_many :endorsements

  validates :email, :presence => true
  validates :email, :uniqueness => true, :case_sensitive => false

  validates :username, :presence => true
  validates :username, :uniqueness => true

  validates :password, :presence => true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   def email_required?
     false
   end
 end
