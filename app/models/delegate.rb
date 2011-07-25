class Delegate < ActiveRecord::Base
  has_one :user, :as => :resource, :dependent => :destroy 
end
