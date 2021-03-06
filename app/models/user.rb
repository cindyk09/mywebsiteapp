class User < ActiveRecord::Base
  has_secure_password
  has_many :projects, dependent: :destroy

  validates_uniqueness_of :name
  validates_presence_of :name

  def self.authenticate!(email, password)
    user = self.find_by(:email => email)
    user.authenticate(password) if user
  end
end
