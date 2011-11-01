class RemoveColumnsFromInternationalPress < ActiveRecord::Migration
  def self.up
    remove_column :international_presses, :mun_as_press_count
    remove_column :international_presses, :experience
    remove_column :international_presses, :role
    remove_column :international_presses, :headline
    remove_column :international_presses, :content
  end

  def self.down
    add_column :international_presses, :content, :text
    add_column :international_presses, :headline, :string
    add_column :international_presses, :role, :string
    add_column :international_presses, :experience, :text
    add_column :international_presses, :mun_as_press_count, :integer
  end
end
