class User < ActiveRecord::Base
  validates_uniqueness_of :email, :message =>  "already exists. But if you are updating EB details, then please ignore this." 
  validates :full_name,:email, :gender, :course, :year, :place_of_residence, :mobile, :presence => true
  validates_format_of :email, :with => /\A[^\W \s]+\@\w+\.\w+\Z/ , :on => :create 
  validates_format_of :mobile, :with => /\A[\d \+ \-]+\Z/ , :on => :create
  belongs_to :resource, :polymorphic => true
end
