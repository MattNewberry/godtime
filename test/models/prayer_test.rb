require 'test_helper'

class PrayerTest < ActiveSupport::TestCase
	setup do
    @matt = users(:matt)
    @christen = users(:christen)
  end

  test "adding" do
  	p = prayers(:one)
  	p.created_for = @christen
  	p.created_by = @matt
  	p.save!

  	assert(p.created_for == @christen, "Failed to associate created_for")
  	assert(p.created_by == @matt, "Failure to associate created_by")
  end
end
