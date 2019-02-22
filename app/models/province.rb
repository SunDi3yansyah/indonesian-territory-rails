class Province < ApplicationRecord
  has_many :regencies, dependent: :restrict_with_error
end
