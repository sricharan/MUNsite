class AddColumnsToInternationalPress < ActiveRecord::Migration
  def self.up
    add_column :international_presses, :ip_mun_1, :string
    add_column :international_presses, :ip_mun_2, :string
    add_column :international_presses, :ip_mun_3, :string
    add_column :international_presses, :ip_mun_4, :string
    add_column :international_presses, :ip_mun_5, :string
    add_column :international_presses, :ip_year_1, :string
    add_column :international_presses, :ip_year_2, :string
    add_column :international_presses, :ip_year_3, :string
    add_column :international_presses, :ip_year_4, :string
    add_column :international_presses, :ip_year_5, :string
    add_column :international_presses, :ip_news_agency_1, :string
    add_column :international_presses, :ip_news_agency_2, :string
    add_column :international_presses, :ip_news_agency_3, :string
    add_column :international_presses, :ip_news_agency_4, :string
    add_column :international_presses, :ip_news_agency_5, :string
    add_column :international_presses, :ip_position_1, :string
    add_column :international_presses, :ip_position_2, :string
    add_column :international_presses, :ip_position_3, :string
    add_column :international_presses, :ip_position_4, :string
    add_column :international_presses, :ip_position_5, :string
    add_column :international_presses, :ip_awards_1, :string
    add_column :international_presses, :ip_awards_2, :string
    add_column :international_presses, :ip_awards_3, :string
    add_column :international_presses, :ip_awards_4, :string
    add_column :international_presses, :ip_awards_5, :string
    add_column :international_presses, :mun_experience, :text
    add_column :international_presses, :position_preference, :string
  end

  def self.down
    remove_column :international_presses, :position_preference
    remove_column :international_presses, :mun_experience
    remove_column :international_presses, :ip_awards_5
    remove_column :international_presses, :ip_awards_4
    remove_column :international_presses, :ip_awards_3
    remove_column :international_presses, :ip_awards_2
    remove_column :international_presses, :ip_awards_1
    remove_column :international_presses, :ip_position_5
    remove_column :international_presses, :ip_position_4
    remove_column :international_presses, :ip_position_3
    remove_column :international_presses, :ip_position_2
    remove_column :international_presses, :ip_position_1
    remove_column :international_presses, :ip_news_agency_5
    remove_column :international_presses, :ip_news_agency_4
    remove_column :international_presses, :ip_news_agency_3
    remove_column :international_presses, :ip_news_agency_2
    remove_column :international_presses, :ip_news_agency_1
    remove_column :international_presses, :ip_year_5
    remove_column :international_presses, :ip_year_4
    remove_column :international_presses, :ip_year_3
    remove_column :international_presses, :ip_year_2
    remove_column :international_presses, :ip_year_1
    remove_column :international_presses, :ip_mun_5
    remove_column :international_presses, :ip_mun_4
    remove_column :international_presses, :ip_mun_3
    remove_column :international_presses, :ip_mun_2
    remove_column :international_presses, :ip_mun_1
  end
end
