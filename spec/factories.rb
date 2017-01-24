FactoryGirl.define do
  factory :user do
    name 'Lori'
    email 'lori@example.com'
    password_digest 'password'
  end

  factory :zip_code do
    user_id 1
    zip_code 27617
    default_zip true
  end
end
