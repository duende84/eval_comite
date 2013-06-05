# == Schema Information
#
# Table name: clients
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  address        :string(255)
#  email          :string(255)
#  web            :string(255)
#  phone          :string(255)
#  mission        :text
#  vision         :text
#  description    :text
#  objectives     :text
#  image          :string(255)
#  responsible_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Client < ActiveRecord::Base
  attr_accessible :address, :description, :email, :image,:remote_image_url,
  :mission, :name, :objectives, :phone, :responsible_id, :vision, :web, :responsible

  #validates :address, precense: true, length: {maximum: 100, minimum: 3}
  #validates :description, precense: true, length: {maximum: 500, minimum: 3}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :name, presence: true, length: { maximum: 50,minimum: 3 }

  belongs_to :responsible, :class_name => "User", :foreign_key => "responsible_id"

  mount_uploader :image, ImageClientUploader

  has_many :client_users
end
