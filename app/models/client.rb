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
  attr_accessible :address, :description, :email, :image,
  :mission, :name, :objectives, :phone, :responsible_id, :vision, :web, :responsible

  belongs_to :responsible, :class_name => "User", :foreign_key => "responsible_id"
  has_many :client_users
end
