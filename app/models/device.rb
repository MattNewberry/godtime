# == Schema Information
#
# Table name: devices
#
#  id         :integer          not null, primary key
#  token      :string(255)
#  name       :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Device < ActiveRecord::Base
	belongs_to :user
end
