# == Schema Information
#
# Table name: component_types
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ComponentType < ActiveRecord::Base
  attr_accessible :description, :name
  validates :name, presence: true, length: { maximum: 50 ,minimum: 3 }
end
