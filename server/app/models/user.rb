class User < ActiveRecord::Base
  def self.findByUsername(username)
    return User.where(name: username)
  end
end
