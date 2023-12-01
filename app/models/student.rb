class Student < ApplicationRecord
  has_many :accounts, dependent: :destroy
  before_save :send_email_using_callback
  has_one_attached :image
  private
  def send_email_using_callback
    NotifierMailer.alert_student(self).deliver_now
  end
end




