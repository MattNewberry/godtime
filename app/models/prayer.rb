# == Schema Information
#
# Table name: prayers
#
#  id          :integer          not null, primary key
#  text        :text
#  created_by  :integer
#  created_for :integer
#  title       :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Prayer < ActiveRecord::Base
	belongs_to :created_for, :class_name => 'User', :foreign_key => 'created_for'
	belongs_to :created_by, :class_name => 'User', :foreign_key => 'created_by'

	validates_presence_of :created_by, :created_for
end
