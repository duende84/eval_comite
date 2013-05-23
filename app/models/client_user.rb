# == Schema Information
#
# Table name: client_users
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  client_id       :integer
#  entailment_date :date
#  exit_date       :date
#  user_state_id   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class ClientUser < ActiveRecord::Base
  attr_accessible :client_id, :entailment_date, :exit_date, :user_id, :user_state_id,
  :client, :user, :user_state

  belongs_to :client, :foreign_key => "client_id"
  belongs_to :user, :foreign_key => "user_id"
  belongs_to :user_state, :foreign_key => "user_state_id"
end