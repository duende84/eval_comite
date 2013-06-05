# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password        :string(255)
#  phone           :string(255)
#  user_type_id    :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#  remember_token  :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :email, :name, :image, :image_url, :password, :phone, :user_type_id, :user_type, :password_confirmation

  attr_accessor :skip_password_validation

  belongs_to :user_type, :foreign_key => "user_type_id"
  has_many :clients
  has_many :client_users

  has_secure_password

  mount_uploader :image, UserImageUploader

  before_save { email.downcase! }
  before_save :create_remember_token

  validates :name, presence: true, length: { maximum: 50, minimum: 3 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, :presence => true, length: { minimum: 6 }, :unless => :skip_password_validation
  validates :password_confirmation, presence: true, :unless => :skip_password_validation



  def custom_update_attributes(params)
    if params[:password].blank?
      params.delete :password
      params.delete :password_confirmation
      update_attributes params
    end
  end

  private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end
