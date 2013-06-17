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

require 'test_helper'

class EvaluationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
