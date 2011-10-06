class AddCouncilPreferenceToExecutiveBoards < ActiveRecord::Migration
  def self.up
    add_column :executive_boards, :council_preference, :string
  end

  def self.down
    remove_column :executive_boards, :council_preference
  end
end
