# == Schema Information
#
# Table name: evaluations
#
#  id                 :integer          not null, primary key
#  date               :date
#  owner_id           :integer
#  evaluation_type_id :integer
#  notes              :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  name               :string(255)
#

class Evaluation < ActiveRecord::Base
  attr_accessible :date, :evaluation_type_id, :evaluation_type, :notes, :owner_id, :owner, :name

  belongs_to :evaluation_type, :foreign_key => "evaluation_type_id"
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"
end
