class User < ActiveRecord::Base
  validates_uniqueness_of :email
  validates :full_name,:email, :gender, :course, :year, :place_of_residence, :mobile, :presence => true
  
  belongs_to :resource, :polymorphic => true
end
