
require 'bcrypt'

class Author < ActiveRecord::Base
  has_many :task

  # Redefine setter for a specific field
  def passw=(val)
    return if val.blank?
    self['passw'] = BCrypt::Password.create(val)
  end

end
