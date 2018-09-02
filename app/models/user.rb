# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  name                   :string
#  role                   :integer
#  mobile                 :string
#  active                 :boolean
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  show_room_id           :decimal(, )
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,:recoverable, :rememberable, :validatable,:trackable


  phony_normalize :mobile, default_country_code: 'IN'

  validates :email, presence: true
  validates :name, presence: true
  validates :mobile, presence: true
   validates :show_room_id, presence: true
  validates :email, uniqueness: true

  belongs_to :show_room


   def is_admin?
   	  role == 1
   end

   def is_manager?
   	  role == 2
   end

   def is_employee?
   	  role == 3 
   end

   def role_name
    case role
    when 1
      "admin"
    when 2
      "Manager"
    when 3
      "Employee"
    end
   end

end
