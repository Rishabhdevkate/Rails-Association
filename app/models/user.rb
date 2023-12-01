class User < ApplicationRecord
  validates :name, :age, presence: true
  before_save :check_age
  # has_many :comments
  has_many :profiles
  def check_age
    self.age = 23 if age.nil?
  end
end
