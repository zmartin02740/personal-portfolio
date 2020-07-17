class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates_presence_of :name

  def first_name
    self.name ? self.name.split.first : 'stranger flavor'
  end

  def last_name
    self.name.split.last
  end
end
