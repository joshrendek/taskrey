class Project < ActiveRecord::Base
  has_many :tasks
  has_many :users, :through => :project_users
  has_many :project_users
end
