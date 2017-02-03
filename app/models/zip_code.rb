class ZipCode < ApplicationRecord
  VALID_ZIP_REGEX = /\d/
  validates :zip_code, presence: true, length: { is: 5 },
                       format: { with: VALID_ZIP_REGEX }
  validates_presence_of :user_id

  belongs_to :user
end
