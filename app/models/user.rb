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
	acts_as_api

	has_many :devices
	has_many :prayers, :foreign_key => 'created_for'
	has_many :praying_for, :foreign_key => 'created_by'
	has_many :reminders

	api_accessible :public do |t|
		t.add :id
		t.add :first_name
		t.add :last_name
		t.add :email
		t.add :photo
		t.add :created_at
	end


	def name
		last = last_name.nil? ? "" : "#{last_name.to(1)}"
		"#{first_name}#{last}"
	end
end