class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :full_name
      t.string :gender
      t.string :course
      t.string :year
      t.string :place_of_residence
      t.string :mobile
      t.string :email
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
