# == Schema Information
#
# Table name: items
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  photo        :string(255)
#  description  :text
#  item_type_id :integer
#  owner_id     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Item < ActiveRecord::Base
  belongs_to :user
  belongs_to :item_type
end
