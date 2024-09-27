class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :projects

  # Constants for roles
  ROLES = %w[user admin].freeze

  # Default role should be "user"
  after_initialize :set_default_role, if: :new_record?

  after_create :assign_admin_role_if_first

  def set_default_role
    self.role ||= 'user'
  end

  # Check if a user is an admin
  def admin?
    self.role == 'admin'
  end

  # Set the user as admin
  def set_admin
    update(role: 'admin')
  end

  # Remove admin privileges from the user
  def remove_admin
    update(role: 'user') if self.admin?
  end

  private

  def assign_admin_role_if_first
    if User.count == 1
        update(role: 'admin')
    end
  end
end # This should be the only end statement for the class
