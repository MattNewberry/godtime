class CreatePrayers < ActiveRecord::Migration
  def change
    create_table :prayers do |t|
      t.text :text
      t.integer :created_by
      t.integer :created_for
      t.text :verse

      t.timestamps
    end

    add_index :prayers, :created_for
    add_index :prayers, :created_by
  end
end
