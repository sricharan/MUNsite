class CreateExecutiveBoards < ActiveRecord::Migration
  def self.up
    create_table :executive_boards do |t|
      t.string :eb_mun_1 
      t.string :eb_mun_2
      t.string :eb_mun_3
      t.string :eb_mun_4
      t.string :eb_mun_5
      t.string :eb_year_1
      t.string :eb_year_2
      t.string :eb_year_3
      t.string :eb_year_4
      t.string :eb_year_5
      t.string :eb_council_1
      t.string :eb_council_2
      t.string :eb_council_3
      t.string :eb_council_4
      t.string :eb_council_5
      t.string :eb_position_1
      t.string :eb_position_2
      t.string :eb_position_3
      t.string :eb_position_4
      t.string :eb_position_5
      t.text   :eb_experience
      t.string :d_mun_1 
      t.string :d_mun_2
      t.string :d_mun_3
      t.string :d_mun_4
      t.string :d_mun_5
      t.string :d_council_1
      t.string :d_council_2
      t.string :d_council_3
      t.string :d_council_4
      t.string :d_council_5
      t.string :d_country_1
      t.string :d_country_2
      t.string :d_country_3
      t.string :d_country_4
      t.string :d_country_5
      t.string :d_awards_1
      t.string :d_awards_2
      t.string :d_awards_3
      t.string :d_awards_4
      t.string :d_awards_5
      t.text   :mun_experience
      t.timestamps
    end
  end

  def self.down
    drop_table :executive_boards
  end
end
