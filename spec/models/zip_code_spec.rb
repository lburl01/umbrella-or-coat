require "rails_helper"

RSpec.describe ZipCode, :type => :model do

  before do
    @user = build(:user)
    @zip_code = build(:zip_code)
  end

  it 'should be valid' do
    expect(@zip_code).to be_valid
  end

  it 'should be exactly 5 digits' do
    invalid_zips = %w[444 555555]
    invalid_zips.each do |invalid_zip|
      @zip_code.zip_code = invalid_zip
      expect(@zip_code).to_not be_valid
    end
  end

  it 'zip_code should be present' do
    @zip_code.zip_code = ''

    expect(@zip_code).to_not be_valid
  end

  it 'default value should be present' do
    @zip_code.default_zip = ''

    expect(@zip_code).to_not be_valid
  end

  it 'user_id should be present' do
    @zip_code.user_id = ''

    expect(@zip_code).to_not be_valid
  end

end
