class RemoveColumnsFromDelegate < ActiveRecord::Migration
  def self.up
    remove_column :delegates, :mun_as_exec_count
    remove_column :delegates, :mun_as_delegate_count
  end

  def self.down
    add_column :delegates, :mun_as_delegate_count, :integer
    add_column :delegates, :mun_as_exec_count, :integer
  end
end
