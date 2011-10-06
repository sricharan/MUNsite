class AddPositionPreferenceToExecutiveBoards < ActiveRecord::Migration
  def self.up
    add_column :executive_boards, :position_preference, :string
  end

  def self.down
    remove_column :executive_boards, :position_preference
  end
end
