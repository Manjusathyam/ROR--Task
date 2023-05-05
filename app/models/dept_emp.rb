class DeptEmp < ApplicationRecord
	belongs_to :employee, optional: true
end
