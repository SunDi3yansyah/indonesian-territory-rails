class Regency < ApplicationRecord
  belongs_to :province, optional: true

  has_many :districts, dependent: :restrict_with_error
end
