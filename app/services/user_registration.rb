class UserRegistration
  include Virtus.model
  include ActiveModel::Validations

  attribute :email, String
  attribute :nickname, String
  attribute :password, String

  validates_presence_of :email, :password
  validates_length_of :password, minimum: 6


  def register
    return nil unless valid? && User.where(email: email).first.nil?

    User.create(
      {
        email: email,
        password_digest: PasswordEncryptor.encrypt(password),
        nickname: nickname
      }
    )

  rescue Sequel::UniqueConstraintViolation
    return nil
  end
end
