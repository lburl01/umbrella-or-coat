class ZipCode < ApplicationRecord
  validates :zip_code, presence: true, length: { is: 5 }
  validates_presence_of :user_id, :default_zip
end
