class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :passwo1rd_confirmation, :remember_me

  after_create :check_if_admin_needs_to_be_made

  has_many :projects, :through => :project_users
  has_many :project_users

  private

  def check_if_admin_needs_to_be_made 
    if User.all.size == 1
      self.admin = 1
      self.save
    end
  end

end
