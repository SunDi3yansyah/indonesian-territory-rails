class Province < ActiveRecord::Base
  has_many :regencies, dependent: :restrict_with_error
end
