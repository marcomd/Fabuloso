class User < ApplicationRecord
  # has_and_belongs_to_many :fables
  has_many :likes,
            class_name: 'Liker'
  has_many :fables,
            through: :likes

  ROLES = %w[admin manager user guest]
  scope :with_role, ->(role) { where("roles_mask & #{2**ROLES.index(role.to_s)} > 0 ") }

  def roles=(roles)
    self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.sum
  end
  def roles
    ROLES.reject { |r| ((roles_mask || 0) & 2**ROLES.index(r)).zero? }
  end
  def role_symbols
    roles.map(&:to_sym)
  end
  def role?(role)
    roles.include? role.to_s
  end
  def roles?(*roles)
    roles.each do |role|
      return true if role? role
    end
    nil
  end
  def admin?
    self.role? 'admin'
  end
  def name option=:fullname
    return unless self.email
    # Get left email text
    match_data = self.email.match(/^([a-z]+)(.|-|_|)([a-z]+|)/i)
    case option
      when :full, :fullname
        name = match_data[1].capitalize
        name << " #{match_data[3].capitalize}" unless match_data[3].blank?
      when :first, :firstname
        name = match_data[1].capitalize
      when :last, :lastname, :surname
        name = match_data[3].capitalize
    end
    name
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
end
