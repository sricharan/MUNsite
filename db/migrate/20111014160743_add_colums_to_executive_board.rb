class AddColumsToExecutiveBoard < ActiveRecord::Migration
  def self.up
    add_column :executive_boards, :muns_as_eb, :string, :default => "0"
    add_column :executive_boards, :muns_as_delegate, :string, :default => "0"
  end

  def self.down
    remove_column :executive_boards, :muns_as_delegate
    remove_column :executive_boards, :muns_as_eb
  end
end
