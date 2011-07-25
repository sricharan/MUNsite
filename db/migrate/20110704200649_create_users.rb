class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :full_name
      t.string :email
      t.string :mobile
      t.string :institution
      t.string :country
      t.string :city
      t.string :type
      t.string :resource_type
      t.integer :resource_id
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
