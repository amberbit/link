def create_user(attributes = {})
  User.create(
    {
      email: "john.doe@example.com",
      password_digest: PasswordEncryptor.encrypt('test4best'),
      nickname: 'John Doe'
    }.merge(attributes)
  )
end

