class Village < ApplicationRecord
  belongs_to :district, optional: true
end
