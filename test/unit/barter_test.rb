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

require 'test_helper'

class BarterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
