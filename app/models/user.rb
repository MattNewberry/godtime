# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  email      :string(255)
#  photo      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
	has_many :devices
	has_many :prayers, :foreign_key => 'created_for'
	has_many :praying_for, :foreign_key => 'created_by'
	has_many :reminders

	def name
		last = last_name.nil? ? "" : " #{last_name.to(0)}."
		"#{first_name}#{last}"
	end

	def as_json(options = {})
	   super options.merge(:methods => [:user], :only => [:id, :title])
	end
end
