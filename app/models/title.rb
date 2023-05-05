class Title < ApplicationRecord
	belongs_to :employee, optional: true
end
