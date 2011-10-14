class User < ActiveRecord::Base
  validates_uniqueness_of :email, :message =>  "already exists. But if you have registered in THIS section before, you can update your details for this email id." 
  validates :full_name,:email, :institute, :gender, :course, :year, :place_of_residence, :mobile, :presence => true
  validates_format_of :email, :with => /\A[\w\.]+\@\w+\.\w+\Z/ , :on => :create 
  validates_format_of :mobile, :with => /\A[\d \+ \-]+\Z/ , :on => :create
  belongs_to :resource, :polymorphic => true
end
