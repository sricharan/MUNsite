class CreateInternationalPresses < ActiveRecord::Migration
  def self.up
    create_table :international_presses do |t|
      t.integer :mun_as_press_count, :default => 0
      t.text :experience
      t.string :role
      t.string :headline
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :international_presses
  end
end
