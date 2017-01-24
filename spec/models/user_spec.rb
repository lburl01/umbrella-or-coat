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
    @user.name = a * 51

    expect(@user).to_not be_valid
  end

end
