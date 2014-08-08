class PasswordEncryptor
  def self.encrypt plain_text
    BCrypt::Password.create(plain_text, cost: ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost)
  end
end
