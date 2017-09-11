class User < ApplicationRecord

include BCrypt

has_many :scores

#validations

validates :name, length: { minimum: 2 } 
validates :name, length: { maximum: 15 } 




validates :name, :email, presence: true
validates :email, uniqueness: true

has_secure_password
attr :password


def password
    @password ||= Password.new(password_digest)
  end

def password=(new_password)
    @password = Password.create(new_password)
    self.password_digest = @password
end










end
