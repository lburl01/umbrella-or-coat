require "rails_helper"

RSpec.describe User, :type => :model do

  before do
    @user = build(:user)
  end

  it "should be valid" do
    expect(@user).to be_valid
  end

  it 'is invalid without name' do
    @user.name = ''

    expect(@user).to_not be_valid
  end

  it 'is invalid without email' do
    @user.email = ''

    expect(@user).to_not be_valid
  end

  it 'is invalid without password' do
    @user.password_digest = ''

    expect(@user).to_not be_valid
  end

  it 'name is not too long' do
    @user.name = 'a' * 51

    expect(@user).to_not be_valid
  end

  it 'email is not too long' do
    @user.email = 'a' * 256

    expect(@user).to_not be_valid
  end

  it 'password is not too short' do
    @user.password_digest = 'a' * 5

    expect(@user).to_not be_valid
  end

  it 'email validation should reject invalid addresses' do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example. foo@barr_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      expect(@user).to_not be_valid
    end
  end

  it 'email addresses should be unique' do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    expect(duplicate_user).to_not be_valid
  end
end
