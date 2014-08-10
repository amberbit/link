require 'rails_helper'

describe UserRegistration do
  it 'should create new user in database if no such user exists yet' do
    UserRegistration.new(nickname: 'John Doe', email: 'john.doe@example.com', password: 'asd1234').register

    expect(User.count).to eq(1)
  end

  it 'should return the registered user' do
    r = UserRegistration.new(nickname: 'John Doe', email: 'john.doe@example.com', password: 'asd1234').register

    expect(r).to be_instance_of(User)
    expect(r.email).to eq('john.doe@example.com')
    expect(r.nickname).to eq('John Doe')
    expect(r.password_digest).not_to be_blank
  end

  it 'should not create second user with the same email' do
    UserRegistration.new(nickname: 'John Doe', email: 'john.doe@example.com', password: 'asd1234').register
    r = UserRegistration.new(nickname: 'John Doe', email: 'john.doe@example.com', password: 'asd1234').register

    expect(User.count).to eq(1)
    expect(r).to be_nil
  end
end

