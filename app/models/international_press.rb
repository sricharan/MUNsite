class InternationalPress < ActiveRecord::Base
  validates :muns_as_ip, :position_preference, :presence => true
  has_one :user, :as => :resource, :dependent => :destroy
  accepts_nested_attributes_for :user
end
