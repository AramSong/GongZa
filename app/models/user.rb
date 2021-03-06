class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
      
      has_many  :visiteds
      has_many  :restaurants, through: :visiteds
      has_many  :scrabs
         
end
