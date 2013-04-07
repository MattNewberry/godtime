class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :weekday
      t.string :label
      t.time :time
      t.integer :user_id
      t.integer :prayer_id

      t.timestamps
    end

    add_index :reminders, :user_id
    add_index :reminders, :prayer_id
  end
end
