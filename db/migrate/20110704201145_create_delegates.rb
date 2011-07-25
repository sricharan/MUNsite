class CreateDelegates < ActiveRecord::Migration
  def self.up
    create_table :delegates do |t|
      t.integer :mun_as_delegate_count, :default => 0
      t.integer :mun_as_exec_count, :default => 0
      t.string :committee_1
      t.string :country_1_1
      t.string :country_1_2
      t.string :committee_2
      t.string :country_2_1
      t.string :country_2_2

      t.timestamps
    end
  end

  def self.down
    drop_table :delegates
  end
end
