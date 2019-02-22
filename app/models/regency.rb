class Regency < ActiveRecord::Base
  belongs_to :province, optional: true

  has_many :districts, dependent: :restrict_with_error
end
