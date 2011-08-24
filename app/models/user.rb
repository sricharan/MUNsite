class User < ActiveRecord::Base
  validates_uniqueness_of :email
#  validates :full_name, :presence => true
#  validates :email, :presence => true
#  validates :mobile, :presence => true
#  validates :institution, :presence => true
#  validates :country, :presence => true
#  validates :city, :presence => true
  
  belongs_to :resource, :polymorphic => true
end
