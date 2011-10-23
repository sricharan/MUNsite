class AddColumnsToDelegate < ActiveRecord::Migration
  def self.up
    add_column :delegates, :country_1_3, :string
    add_column :delegates, :country_1_4, :string
    add_column :delegates, :country_2_3, :string
    add_column :delegates, :country_2_4, :string
    add_column :delegates, :muns_as_delegate, :string
    add_column :delegates, :d_mun_1, :string
    add_column :delegates, :d_mun_2, :string
    add_column :delegates, :d_mun_3, :string
    add_column :delegates, :d_mun_4, :string
    add_column :delegates, :d_mun_5, :string
    add_column :delegates, :d_council_1, :string
    add_column :delegates, :d_council_2, :string
    add_column :delegates, :d_council_3, :string
    add_column :delegates, :d_council_4, :string
    add_column :delegates, :d_council_5, :string
    add_column :delegates, :d_country_1, :string
    add_column :delegates, :d_country_2, :string
    add_column :delegates, :d_country_3, :string
    add_column :delegates, :d_country_4, :string
    add_column :delegates, :d_country_5, :string
    add_column :delegates, :d_awards_1, :string
    add_column :delegates, :d_awards_2, :string
    add_column :delegates, :d_awards_3, :string
    add_column :delegates, :d_awards_4, :string
    add_column :delegates, :d_awards_5, :string
    add_column :delegates, :mun_experience, :text
  end

  def self.down
    remove_column :delegates, :mun_experience
    remove_column :delegates, :d_awards_5
    remove_column :delegates, :d_awards_4
    remove_column :delegates, :d_awards_3
    remove_column :delegates, :d_awards_2
    remove_column :delegates, :d_awards_1
    remove_column :delegates, :d_country_5
    remove_column :delegates, :d_country_4
    remove_column :delegates, :d_country_3
    remove_column :delegates, :d_country_2
    remove_column :delegates, :d_country_1
    remove_column :delegates, :d_council_5
    remove_column :delegates, :d_council_4
    remove_column :delegates, :d_council_3
    remove_column :delegates, :d_council_2
    remove_column :delegates, :d_council_1
    remove_column :delegates, :d_mun_5
    remove_column :delegates, :d_mun_4
    remove_column :delegates, :d_mun_3
    remove_column :delegates, :d_mun_2
    remove_column :delegates, :d_mun_1
    remove_column :delegates, :muns_as_delegate
    remove_column :delegates, :country_2_4
    remove_column :delegates, :country_2_3
    remove_column :delegates, :country_1_4
    remove_column :delegates, :country_1_3
  end
end
