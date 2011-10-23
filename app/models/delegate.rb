class Delegate < ActiveRecord::Base
  validate :muns_as_delegate, :committee_1, :committee_2, :country_1_1, :country_1_2, :country_1_3, :country_1_4, :country_2_1, :country_2_2, :country_2_3,:country_2_4, :presence => true  
  has_one :user, :as => :resource, :dependent => :destroy
  accepts_nested_attributes_for :user 
end
