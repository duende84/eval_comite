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

require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
