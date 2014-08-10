class EmailAndPasswordAuth
  def self.authenticate(email, password)
    user = User.where(email: email).first
    return nil if user.nil?

    if user.password_digest.present? && BCrypt::Password.new(user.password_digest) == password
      return user
    else
      return nil
    end
  end
end
