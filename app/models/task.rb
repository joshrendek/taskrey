class Task < ActiveRecord::Base
  belongs_to :author, :class_name => "User", :foreign_key => "author_id" 
  belongs_to :assigned, :class_name => "User", :foreign_key => "assigned_to_id"
  has_many :attachments
  accepts_nested_attributes_for :attachments
end
