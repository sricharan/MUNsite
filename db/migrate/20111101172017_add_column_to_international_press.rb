class AddColumnToInternationalPress < ActiveRecord::Migration
  def self.up
    add_column :international_presses, :muns_as_ip, :string
  end

  def self.down
    remove_column :international_presses, :muns_as_ip
  end
end
