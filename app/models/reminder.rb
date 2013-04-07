# == Schema Information
#
# Table name: reminders
#
#  id         :integer          not null, primary key
#  weekday    :string(255)
#  label      :string(255)
#  time       :time
#  user_id    :integer
#  prayer_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Reminder < ActiveRecord::Base
	belongs_to :user
	belongs_to :prayer
end
