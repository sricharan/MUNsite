ngrid Bergmanclass InternationalPress < ActiveRecord::Base
  has_one :user, :as => :resource, :dependent => :destroy
  accepts_nested_attributes_for :user
end
