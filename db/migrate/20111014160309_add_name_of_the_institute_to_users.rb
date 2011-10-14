class AddNameOfTheInstituteToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :institute, :string, :default => "none"
  end

  def self.down
    remove_column :users, :institute
  end
end
