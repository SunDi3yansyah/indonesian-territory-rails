class District < ApplicationRecord
  belongs_to :regency, optional: true

  has_many :villages, dependent: :restrict_with_error
end
