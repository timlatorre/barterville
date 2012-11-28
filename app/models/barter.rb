# == Schema Information
#
# Table name: barters
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  receiver_id      :integer
#  user_item_id     :integer
#  receiver_item_id :integer
#  accepted         :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Barter < ActiveRecord::Base
  attr_accessible :accepted, :receiver_id, :receiver_item_id, :user_id, :user_item_id
  belongs_to :user
end
