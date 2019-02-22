class Village < ActiveRecord::Base
  belongs_to :district, optional: true
end
