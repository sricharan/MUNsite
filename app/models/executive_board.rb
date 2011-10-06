class ExecutiveBoard < ActiveRecord::Base

 has_one :user, :as => :resource, :dependent => :destroy
 accepts_nested_attributes_for :user
 validates :council_preference, :position_preference, :presence => true
end
