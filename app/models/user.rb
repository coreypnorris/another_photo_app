class User < ActiveRecord::Base
  validates_presence_of :user_name
  validates_presence_of :email
  validates_uniqueness_of :user_name
  validates_uniqueness_of :email
  has_secure_password

  def self.authenticate(user_name, password)
    user = find_by_user_name(user_name)
    return user if user && user.authenticate(password)
  end

end

