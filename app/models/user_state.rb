# == Schema Information
#
# Table name: user_states
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserState < ActiveRecord::Base
  attr_accessible :name
  validates :name, presence: true, length: { maximum: 50 ,minimum: 3}
  has_many :client_users
end