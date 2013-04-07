# == Schema Information
#
# Table name: prayers
#
#  id          :integer          not null, primary key
#  text        :text
#  created_by  :integer
#  created_for :integer
#  verse       :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Prayer < ActiveRecord::Base
	acts_as_api

	belongs_to :created_for, :class_name => 'User', :foreign_key => 'created_for'
	belongs_to :created_by, :class_name => 'User', :foreign_key => 'created_by'

	validates_presence_of :created_by, :created_for

	api_accessible :public do |t|
	  t.add :id
	  t.add :text
	  t.add :verse
	  t.add :created_at
	  t.add :created_by
	end
end
